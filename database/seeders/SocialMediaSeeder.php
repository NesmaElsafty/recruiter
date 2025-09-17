<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\SocialMedia;

class SocialMediaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $socialMedia = [
        [
            'platform' => 'facebook',
            'link' => 'https://www.facebook.com/recruiter',
        ],
        [
            'platform' => 'twitter',
            'link' => 'https://www.twitter.com/recruiter',
        ],
        [
            'platform' => 'instagram',
            'link' => 'https://www.instagram.com/recruiter',
        ],
        [
            'platform' => 'linkedin',
            'link' => 'https://www.linkedin.com/recruiter',
        ],
    ];
        foreach ($socialMedia as $media) {
            SocialMedia::create($media);
        }
    }

      
}
