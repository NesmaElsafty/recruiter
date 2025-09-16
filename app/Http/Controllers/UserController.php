<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Helpers\PaginationHelper;
use App\Services\UserService;
use App\Http\Resources\UserResource;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Exception;

class UserController extends Controller
{
    protected $userService;

    public function __construct(UserService $userService)
    {
        $this->userService = $userService;
    }

    public function index(Request $request)
    {
        try {
            $request->validate([
                'type' => 'required|string|in:candidate,recruiter,admin',
            ]);     
            $users = $this->userService->getAllUsers($request->all())->paginate(10);
            $stats = null;
            $stats = $this->userService->stats($request->type);

            return response()->json([
                'success' => true,
                'data' => UserResource::collection($users),
                'stats' => $stats,
                'pagination' => PaginationHelper::paginate($users),
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve users',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function show($id)
    {
        try {
            $user = $this->userService->getUserById($id);
            return response()->json([
                'success' => true,
                'data' => new UserResource($user)
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve user',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // create user
    public function store(Request $request)
    {
        try {
            $request->validate([
                'name' => 'required|string|max:255',
                'email' => 'required|email|max:255|unique:users,email',
                'type' => 'required|string|in:candidate,recruiter,admin',
                'phone' => 'required|string|max:255|unique:users,phone',
                'city_id' => 'nullable|exists:cities,id',
                'major_id' => 'nullable|exists:majors,id',
                'company_name' => 'nullable|string|max:255',
                'job_title' => 'nullable|string|max:255',
            ]);
            $userData = $request->all();
            $userData['password'] = Hash::make('123456');
            $user = $this->userService->createUser($userData);
            return response()->json([
                'success' => true,
                'message' => 'User created successfully',
                'data' => new UserResource($user)
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to create user',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // update user
    public function update(Request $request, $id)
    {
        try {
            $userData = $request->all();
            $user = $this->userService->updateUser($id, $userData);
            return response()->json([
                'success' => true,
                'message' => 'User updated successfully',
                'data' => new UserResource($user)
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to update user',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // delete user
    public function destroy($id)
    {
        try {
            $this->userService->deleteUser($id);
            return response()->json([
                'success' => true,
                'message' => 'User deleted successfully'
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to delete user',
                'error' => $e->getMessage()
            ], 500);
        }
    }
    
    // bulk actions
    public function bulkActions(Request $request)
    {
        try {
            $request->validate([
                'ids' => 'nullable|array',
                'ids.*' => 'required|exists:users,id',
                'type' => 'required|string|in:candidate,recruiter',
                'action' => 'required|string|in:activationToggle,delete,unblock,block,export',
            ]);

            $ids = [];
            if(!empty($request->ids)) {
                $ids = $request->ids;
            }else{
                $ids = User::where('type', $request->type)->pluck('id')->toArray();
            }

            switch($request->action) {
                case 'activationToggle':
                    $result = $this->userService->activationToggle($ids);
                    break;
                case 'delete':
                    $result = $this->userService->delete($ids);
                    break;
                case 'unblock':
                    $result = $this->userService->unblock($ids);
                    break;
                case 'block':
                    $result = $this->userService->block($ids);
                    break;
                case 'export':
                    $result = $this->userService->export($ids, $request->type);
                    break;
            }
            return response()->json([
                'success' => true,
                'message' => 'Bulk actions performed successfully',
                'url' => $request->action == 'export' ? $result: null
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to bulk actions',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function uploadAvatar(Request $request, $id)
    {
        try {
            $request->validate([
                'avatar' => 'required|image|mimes:jpeg,png,jpg,gif,webp|max:2048'
            ]);

            $user = $this->userService->getUserById($id);
            
            $user->clearMediaCollection('avatar');
            $user->addMediaFromRequest('avatar')
                ->toMediaCollection('avatar');

            return response()->json([
                'success' => true,
                'message' => 'Avatar uploaded successfully',
                'data' => [
                    'url' => $user->getFirstMediaUrl('avatar'),
                    'thumb' => $user->getFirstMediaUrl('avatar', 'thumb'),
                    'medium' => $user->getFirstMediaUrl('avatar', 'medium'),
                ]
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to upload avatar',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function uploadResume(Request $request, $id)
    {
        try {
            $request->validate([
                'resume' => 'required|file|mimes:pdf,doc,docx|max:5120' // 5MB
            ]);

            $user = $this->userService->getUserById($id);
            
            $user->clearMediaCollection('resume');
            $user->addMediaFromRequest('resume')
                ->toMediaCollection('resume');

            return response()->json([
                'success' => true,
                'message' => 'Resume uploaded successfully',
                'data' => [
                    'url' => $user->getFirstMediaUrl('resume'),
                    'name' => $user->getFirstMedia('resume')->name,
                    'size' => $user->getFirstMedia('resume')->size,
                ]
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to upload resume',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function uploadDocuments(Request $request, $id)
    {
        try {
            $request->validate([
                'documents.*' => 'required|file|mimes:pdf,doc,docx|max:10240' // 10MB each
            ]);

            $user = $this->userService->getUserById($id);
            
            $uploadedDocuments = [];
            foreach ($request->file('documents') as $document) {
                $media = $user->addMediaFromRequest('documents')
                    ->toMediaCollection('documents');
                
                $uploadedDocuments[] = [
                    'id' => $media->id,
                    'name' => $media->name,
                    'url' => $media->getUrl(),
                    'size' => $media->size,
                    'mime_type' => $media->mime_type,
                ];
            }

            return response()->json([
                'success' => true,
                'message' => 'Documents uploaded successfully',
                'data' => $uploadedDocuments
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to upload documents',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function deleteMedia($id, $mediaId)
    {
        try {
            $user = $this->userService->getUserById($id);
            $media = $user->getMedia()->find($mediaId);
            
            if (!$media) {
                return response()->json([
                    'success' => false,
                    'message' => 'Media not found'
                ], 404);
            }

            $media->delete();

            return response()->json([
                'success' => true,
                'message' => 'Media deleted successfully'
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to delete media',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
