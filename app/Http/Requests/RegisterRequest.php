<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RegisterRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        $type = $this->input('type');
        
        $rules = [
            'name' => 'required|string|max:255',
            'email' => [
                'required',
                'email',
                'max:255',
                function ($attribute, $value, $fail) use ($type) {
                    $exists = \App\Models\User::where('email', $value)
                        ->where('type', $type)
                        ->exists();
                    if ($exists) {
                        $fail("The email has already been taken for this user type.");
                    }
                },
            ],
            'password' => 'required|string|min:6|confirmed',
            'type' => 'required|in:admin,recruiter,candidate',
            'city_id' => 'nullable|exists:cities,id',
            'major_id' => 'nullable|exists:majors,id',
        ];

        // Add company fields for recruiters
        if ($type === 'recruiter') {
            $rules['company_name'] = 'required|string|max:255';
            $rules['job_title'] = 'required|string|max:255';
        }

        return $rules;
    }

    /**
     * Get custom messages for validator errors.
     */
    public function messages(): array
    {
        return [
            'email.required' => 'Email is required.',
            'email.email' => 'Please provide a valid email address.',
            'email.unique' => 'This email is already registered for this user type.',
            'password.required' => 'Password is required.',
            'password.min' => 'Password must be at least 6 characters.',
            'password.confirmed' => 'Password confirmation does not match.',
            'type.required' => 'User type is required.',
            'type.in' => 'User type must be admin, recruiter, or candidate.',
            'company_name.required' => 'Company name is required for recruiters.',
            'job_title.required' => 'Job title is required for recruiters.',
        ];
    }
}
