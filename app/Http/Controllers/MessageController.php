<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Services\MessageService;
use App\Http\Resources\MessageResource;
use App\Models\Message;
use App\Models\Reply;
use App\Models\User;
use Exception;
use App\Helpers\PaginationHelper;


class MessageController extends Controller
{
    //
    public function __construct(MessageService $messageService)
    {
        $this->messageService = $messageService;
    }

        // get messages
    public function index(Request $request)
    {
        try{
            $user = auth('api')->user();
            $messages = Message::where('sender_id', $user->id)->paginate(15);
            
            if($user->type == 'admin') {
                $messages = $this->messageService->getAllMessages($request->all())->paginate(15);
            }

            return response()->json([
                'success' => true,
                'message' => 'Messages retrieved successfully',
                'data' => MessageResource::collection($messages),
                'pagination' => PaginationHelper::paginate($messages)
            ]);
        }catch(Exception $e){
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve messages',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // store message
    public function store(Request $request)
    {
        try{
            $request->validate([
                'message' => 'required|string',
            ]);
            $this->messageService->store($request->all());
            return response()->json([
                'success' => true,
                'message' => 'Message sent successfully',
            ]);
        }catch(Exception $e){
            return response()->json([
                'success' => false,
                'message' => 'Failed to send message',
                'error' => $e->getMessage()
            ], 500);
        }
    }


    public function show($id)
    {
        try{
            if(auth('api')->user()->type == 'admin') {
                $message = $this->messageService->getMessageById($id);
                $message->is_read = true;
                $message->save();
                $message->refresh();
            }else{
                $message = Message::find($id);
                if($message->sender_id != auth('api')->user()->id) {
                    return response()->json([
                        'success' => false,
                        'message' => 'You are not authorized to view this message',
                    ], 401);
                }
            }
            return response()->json([
                'success' => true,
                'message' => 'Message retrieved successfully',
                'data' => new MessageResource($message),
                'is_read' => $message->is_read
            ]);
        }catch(Exception $e){
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve message',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // bulk actions
    public function bulkActions(Request $request)
    {
        try{
            $request->validate([
                'ids' => 'nullable|array',
                'ids.*' => 'required|exists:messages,id',
                'action' => 'required|string|in:readToggle,export'
            ]);
            $ids = [];
            if(isset($request->ids)) {
                $ids = $request->ids;
            }else{
                $ids = Message::pluck('id')->toArray();
            }
            switch($request->action) {
                case 'readToggle':
                    $result = $this->messageService->readToggle($ids);
                    break;
                case 'export':
                    $result = $this->messageService->export($ids);
                    break;
            }
        return response()->json([
            'success' => true,
            'message' => 'Bulk actions performed successfully',
            'url' => $request->action == 'export' ? $result: null
        ]);
        }catch(Exception $e){
            return response()->json([
                'success' => false,
                'message' => 'Failed to bulk actions',
                'error' => $e->getMessage()
            ], 500);
        }
    }
   
    // reply
    public function reply(Request $request)
    {
        try{
            $request->validate([
                'message_id' => 'required|exists:messages,id',
                'reply' => 'required|string',
            ]);

            $user = auth('api')->user();

            if($user->type != 'admin') {
                return response()->json([
                    'success' => false,
                    'message' => 'You are not authorized to reply to this message',
                ], 401);
            }

            $message = Message::find($request->message_id);

            $reply = new Reply();
            $reply->message_id = $message->id;
            $reply->user_id = $user->id;
            $reply->reply = $request->reply;
            $reply->save();

            $message->is_replied = true;
            $message->save();

            return response()->json([
                'success' => true,
                'message' => 'Reply sent successfully',
                'data' => new MessageResource($message)
            ]);
        }catch(Exception $e){
            return response()->json([
                'success' => false,
                'message' => 'Failed to reply',
                'error' => $e->getMessage()
            ], 500);
        }
    }

}
