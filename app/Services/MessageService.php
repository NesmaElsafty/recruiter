<?php

namespace App\Services;

use App\Models\Message;
use App\Models\User;
use App\Helpers\ExportHelper;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;

class MessageService
{
    public function getAllMessages($data)
    {
        $query = Message::with('sender');

        // Filter by read status
        if (isset($data['is_replied'])) {
            $query->where('is_replied', $data['is_replied']);
        }

        // Search in message content
        if (isset($data['search'])) {
            $query->where('message', 'like', "%{$data['search']}%");
            $query->orWhereHas('sender', function ($q) use ($data) {
                $q->where('fname', 'like', "%{$data['search']}%")
                  ->orWhere('lname', 'like', "%{$data['search']}%")
                  ->orWhere('email', 'like', "%{$data['search']}%")
                  ->orWhere('type', 'like', "%{$data['search']}%");
            });
        }

        if(isset($data['sorted_by'])) {
            switch($data['sorted_by']) {
                case 'newest':
                    $query->orderBy('created_at', 'desc');
                    break;
               
                case 'oldest':
                    $query->orderBy('created_at', 'asc');
                    break;

                case 'name':
                    $query->orderBy('sender.fname', 'asc');
                    break;
            }
        }else{
            $query->orderBy('id', 'asc');
        }

        return $query;
    }

    public function store($data)
    {
        $user = auth('api')->user();
        $message = Message::create([
            'message' => $data['message'],
            'sender_id' => $user->id,
            'is_read' => false,
            'is_replied' => false,
        ]);

        return $message;
    }

    public function getMessageById($id)
    {
        $message = Message::with('sender')->find($id);

        return $message;
    }

    public function export($ids)
    {
        // Prepare CSV data
        $currentUser = auth('api')->user();
        $messages = Message::whereIn('id', $ids)->get();
        $csvData = [];

        foreach ($messages as $message) {
            $csvData[] = [
                "ID" => $message->id,
                "Name" => $message->sender ? $message->sender->name : 'N/A',
                "Email" => $message->sender ? $message->sender->email : 'N/A',
                "type" => $message->sender ? $message->sender->type : 'N/A',
                "Message" => $message->message,
                "is_replied" => $message->is_replied ? 'Yes' : 'No',
                "Created At" => $message->created_at ? $message->created_at->format('Y-m-d H:i:s') : 'N/A',
            ];
        }

        // Generate filename
        $filename = 'messages_export_' . now()->format('Y-m-d_H-i-s') . '.csv';
        $media = ExportHelper::exportToMedia($csvData, $currentUser, 'exports', $filename);
        return $media->getFullUrl();

    }

    // readToggle
    public function readToggle($ids)
    {
        $messages = Message::whereIn('id', $ids)->get();
        foreach($messages as $message){
            $message->is_read = !$message->is_read;
            $message->save();
        }
        return true;
    }

}
