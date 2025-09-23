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
use App\Helpers\LocalizationHelper;


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

            return LocalizationHelper::successResponse(
                'messages_retrieved_successfully',
                MessageResource::collection($messages),
                200,
                ['pagination' => PaginationHelper::paginate($messages)]
            );
        }catch(Exception $e){
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_messages',
                $e->getMessage(),
                500
            );
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
            return LocalizationHelper::successResponse(
                'message_sent_successfully'
            );
        }catch(Exception $e){
            return LocalizationHelper::errorResponse(
                'failed_to_send_message',
                $e->getMessage(),
                500
            );
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
                    return LocalizationHelper::errorResponse(
                        'not_authorized_to_view_message',
                        null,
                        401
                    );
                }
            }
            return LocalizationHelper::successResponse(
                'message_retrieved_successfully',
                new MessageResource($message),
                200,
                ['is_read' => $message->is_read]
            );
        }catch(Exception $e){
            return LocalizationHelper::errorResponse(
                'failed_to_retrieve_message',
                $e->getMessage(),
                500
            );
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
        return LocalizationHelper::successResponse(
            'bulk_actions_performed_successfully',
            null,
            200,
            ['url' => $request->action == 'export' ? $result: null]
        );
        }catch(Exception $e){
            return LocalizationHelper::errorResponse(
                'failed_to_bulk_actions',
                $e->getMessage(),
                500
            );
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
                return LocalizationHelper::errorResponse(
                    'not_authorized_to_reply',
                    null,
                    401
                );
            }

            $message = Message::find($request->message_id);

            $reply = new Reply();
            $reply->message_id = $message->id;
            $reply->user_id = $user->id;
            $reply->reply = $request->reply;
            $reply->save();

            $message->is_replied = true;
            $message->save();

            return LocalizationHelper::successResponse(
                'reply_sent_successfully',
                new MessageResource($message)
            );
        }catch(Exception $e){
            return LocalizationHelper::errorResponse(
                'failed_to_reply',
                $e->getMessage(),
                500
            );
        }
    }

}
