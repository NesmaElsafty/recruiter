<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Services\TermService;
use App\Http\Resources\TermResource;
use App\Helpers\PaginationHelper;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Validation\ValidationException;
use Exception;
use App\Models\Term;

class TermController extends Controller
{
    protected $termService;

    public function __construct(TermService $termService)
    {
        $this->termService = $termService;
    }


    public function index(Request $request)
    {
        try {
            $request->validate([
                'type' => 'required|array|in:terms,privacy_policy,faq',
                'user_type' => 'required|string|in:candidate,recruiter',
            ]);
            
            $data = $request->all();
            $terms = $this->termService->getAllTerms($data)->paginate(15);
            $user = auth('api')->user();
            $stats = null;
            if($user && $user->type == 'admin') {
                $stats = $this->termService->getTermsStats();
            }
            
            return response()->json([
                'success' => true,
                'data' => TermResource::collection($terms),
                'pagination' => PaginationHelper::paginate($terms)
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to fetch terms',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function store(Request $request)
    {
        try {
            $validated = $request->validate([
                'title_en' => 'required|string|max:255',
                'title_ar' => 'required|string|max:255',
                'description_en' => 'required|string',
                'description_ar' => 'required|string',
                'type' => 'required|in:terms,privacy_policy,faq',
                'user_type' => 'required|in:candidate,recruiter',
                'is_active' => 'required|boolean'
            ]);

            $term = $this->termService->createTerm($validated);
            
            return response()->json([
                'success' => true,
                'message' => 'Term created successfully',
                'data' => new TermResource($term)
            ], 201);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to create term',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function show($id)
    {
        try {
            $term = $this->termService->getTermById($id);
            
            return response()->json([
                'success' => true,
                'data' => new TermResource($term)
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to fetch term',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            

            $term = $this->termService->updateTerm($id, $request->all());
            
            return response()->json([
                'success' => true,
                'message' => 'Term updated successfully',
                'data' => new TermResource($term)
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to update term',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function destroy($id)
    {
        try {
            $this->termService->deleteTerm($id);
            
            return response()->json([
                'success' => true,
                'message' => 'Term deleted successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to delete term',
                'error' => $e->getMessage()
            ], 500);
        }
    }


    public function getByType($type)
    {
        try {
            $terms = $this->termService->getTermsByType($type);
            
            return response()->json([
                'success' => true,
                'data' => TermResource::collection($terms)
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to fetch terms by type',
                'error' => $e->getMessage()
            ], 500);
        }
    }


    public function getByUserType($userType)
    {
        try {
            $terms = $this->termService->getTermsByUserType($userType);
            
            return response()->json([
                'success' => true,
                'data' => TermResource::collection($terms)
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to fetch terms by user type',
                'error' => $e->getMessage()
            ], 500);
        }
    }


    public function stats()
    {
        try {
            $stats = $this->termService->getTermsStats();
            
            return response()->json([
                'success' => true,
                'data' => $stats
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to fetch terms statistics',
                'error' => $e->getMessage()
            ], 500);
        }
    }


    public function bulkDelete(Request $request)
    {
        try {
            $validated = $request->validate([
                'ids' => 'required|array|min:1',
                'ids.*' => 'integer|exists:terms,id'
            ]);

            $this->termService->bulkDeleteTerms($validated['ids']);
            
            return response()->json([
                'success' => true,
                'message' => 'Terms deleted successfully'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to delete terms',
                'error' => $e->getMessage()
            ], 500);
        }
    }


    public function activationToggle(Request $request)
    {
        try {
            $validated = $request->validate([
                'ids' => 'required|array|min:1',
                'ids.*' => 'integer|exists:terms,id'
            ]);

            $this->termService->activationToggle($validated['ids']);
            
            return response()->json([
                'success' => true,
                'message' => 'Terms status updated successfully'
            ]);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to update terms status',
                'error' => $e->getMessage()
            ], 500);
        }
    }


    public function export(Request $request)
    {
        try {
            $validated = $request->validate([
                'ids' => 'nullable|array',
                'ids.*' => 'integer|exists:terms,id',
                'type' => 'nullable|in:terms,privacy_policy,faq',
                'user_type' => 'nullable|in:candidate,recruiter',
                'is_active' => 'nullable|boolean',
                'date_from' => 'nullable|date',
                'date_to' => 'nullable|date'
            ]);

            $filters = array_filter($validated, function($key) {
                return in_array($key, ['type', 'user_type', 'is_active', 'date_from', 'date_to']);
            }, ARRAY_FILTER_USE_KEY);

            $terms = $this->termService->exportTerms($validated['ids'] ?? null, $filters);
            
            return response()->json([
                'success' => true,
                'data' => TermResource::collection($terms)
            ]);
        } catch (ValidationException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Validation failed',
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to export terms',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
