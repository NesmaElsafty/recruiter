<?php

namespace App\Http\Controllers;

use App\Models\SocialMedia;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Resources\SocialMediaResource;

class SocialMediaController extends Controller
{

    public function index()
    {
        try {
        $socialMedia = SocialMedia::all();
        return response()->json([
            'success' => true,
            'data' => SocialMediaResource::collection($socialMedia)
        ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve social media',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function store(Request $request)
    {
        try {
        $socialMedia = SocialMedia::create($request->all());
        return response()->json([
            'success' => true,
            'data' => new SocialMediaResource($socialMedia)
        ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to create social media',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function update(Request $request, SocialMedia $socialMedia)
    {
        try {
        $socialMedia->update($request->all());
        return response()->json([
                'success' => true,
                'data' => new SocialMediaResource($socialMedia)
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to update social media',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function destroy(SocialMedia $socialMedia)
    {
        try {
        $socialMedia->delete();
        return response()->json([
            'success' => true,
            'message' => 'Social media deleted successfully',
        ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to delete social media',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
