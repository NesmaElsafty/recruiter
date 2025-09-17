<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\ContactUs;

class ContactUsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Clear existing contact us records
        ContactUs::truncate();

        // Create one contact us record
        ContactUs::create([
            'address' => 'الرياض، المملكة العربية السعودية - حي النرجس، شارع الملك فهد، مبنى رقم 123',
            'phone' => '966123456789',
            'email' => 'info@recruiter.com',
            'copyright' => '© 2025 Recruiter Platform. جميع الحقوق محفوظة.',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

    }
}
