<?php

namespace App\Http\Controllers;

use App\Models\ContactUs;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Resources\ContactUsResourse;

class ContactUsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        try {
       $contactUs = ContactUs::first();
       return response()->json([
        'success' => true,
        'message' => 'Contact us retrieved successfully',
        'data' => new ContactUsResourse($contactUs)
       ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to retrieve contact us',
                'error' => $e->getMessage()
            ], 500);
        }
    }


    public function update(Request $request, ContactUs $contactUs)
    {
        
        try {
            $contactUs = ContactUs::first();
            $contactUs->update($request->all());
            return response()->json([
                'success' => true,
                'message' => 'Contact us updated successfully',
                'data' => new ContactUsResourse($contactUs)
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed to update contact us',
                'error' => $e->getMessage()
            ], 500);
        }
    }

}
