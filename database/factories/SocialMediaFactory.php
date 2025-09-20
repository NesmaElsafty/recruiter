<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\SocialMedia>
 */
class SocialMediaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $platform = fake()->randomElement($this->getPlatforms());
        
        return [
            'platform' => $platform['name'],
            'link' => $this->generateLink($platform),
        ];
    }

    /**
     * Get list of social media platforms
     */
    private function getPlatforms(): array
    {
        return [
            [
                'name' => 'Facebook',
                'url_template' => 'https://facebook.com/{username}',
                'usernames' => ['recruiterhub', 'jobconnect', 'careerlink', 'talentfinder', 'jobseekerpro']
            ],
            [
                'name' => 'Twitter',
                'url_template' => 'https://twitter.com/{username}',
                'usernames' => ['@recruiterhub', '@jobconnect', '@careerlink', '@talentfinder', '@jobseekerpro']
            ],
            [
                'name' => 'LinkedIn',
                'url_template' => 'https://linkedin.com/company/{username}',
                'usernames' => ['recruiterhub', 'jobconnect', 'careerlink', 'talentfinder', 'jobseekerpro']
            ],
            [
                'name' => 'Instagram',
                'url_template' => 'https://instagram.com/{username}',
                'usernames' => ['recruiterhub', 'jobconnect', 'careerlink', 'talentfinder', 'jobseekerpro']
            ],
            [
                'name' => 'YouTube',
                'url_template' => 'https://youtube.com/c/{username}',
                'usernames' => ['recruiterhub', 'jobconnect', 'careerlink', 'talentfinder', 'jobseekerpro']
            ],
            [
                'name' => 'TikTok',
                'url_template' => 'https://tiktok.com/@{username}',
                'usernames' => ['recruiterhub', 'jobconnect', 'careerlink', 'talentfinder', 'jobseekerpro']
            ],
            [
                'name' => 'WhatsApp',
                'url_template' => 'https://wa.me/{phone}',
                'usernames' => ['201234567890', '201234567891', '201234567892', '201234567893', '201234567894']
            ],
            [
                'name' => 'Telegram',
                'url_template' => 'https://t.me/{username}',
                'usernames' => ['recruiterhub', 'jobconnect', 'careerlink', 'talentfinder', 'jobseekerpro']
            ],
            [
                'name' => 'Snapchat',
                'url_template' => 'https://snapchat.com/add/{username}',
                'usernames' => ['recruiterhub', 'jobconnect', 'careerlink', 'talentfinder', 'jobseekerpro']
            ],
            [
                'name' => 'Pinterest',
                'url_template' => 'https://pinterest.com/{username}',
                'usernames' => ['recruiterhub', 'jobconnect', 'careerlink', 'talentfinder', 'jobseekerpro']
            ],
            [
                'name' => 'Reddit',
                'url_template' => 'https://reddit.com/r/{username}',
                'usernames' => ['recruiterhub', 'jobconnect', 'careerlink', 'talentfinder', 'jobseekerpro']
            ],
            [
                'name' => 'Discord',
                'url_template' => 'https://discord.gg/{invite}',
                'usernames' => ['recruiterhub', 'jobconnect', 'careerlink', 'talentfinder', 'jobseekerpro']
            ],
            [
                'name' => 'GitHub',
                'url_template' => 'https://github.com/{username}',
                'usernames' => ['recruiterhub', 'jobconnect', 'careerlink', 'talentfinder', 'jobseekerpro']
            ],
            [
                'name' => 'Medium',
                'url_template' => 'https://medium.com/@{username}',
                'usernames' => ['recruiterhub', 'jobconnect', 'careerlink', 'talentfinder', 'jobseekerpro']
            ],
            [
                'name' => 'Behance',
                'url_template' => 'https://behance.net/{username}',
                'usernames' => ['recruiterhub', 'jobconnect', 'careerlink', 'talentfinder', 'jobseekerpro']
            ],
        ];
    }

    /**
     * Generate link for the platform
     */
    private function generateLink(array $platform): string
    {
        $username = fake()->randomElement($platform['usernames']);
        return str_replace('{username}', $username, $platform['url_template']);
    }

    /**
     * Create Facebook social media
     */
    public function facebook(): static
    {
        return $this->state(fn (array $attributes) => [
            'platform' => 'Facebook',
            'link' => 'https://facebook.com/' . fake()->randomElement(['recruiterhub', 'jobconnect', 'careerlink']),
        ]);
    }

    /**
     * Create Twitter social media
     */
    public function twitter(): static
    {
        return $this->state(fn (array $attributes) => [
            'platform' => 'Twitter',
            'link' => 'https://twitter.com/' . fake()->randomElement(['recruiterhub', 'jobconnect', 'careerlink']),
        ]);
    }

    /**
     * Create LinkedIn social media
     */
    public function linkedin(): static
    {
        return $this->state(fn (array $attributes) => [
            'platform' => 'LinkedIn',
            'link' => 'https://linkedin.com/company/' . fake()->randomElement(['recruiterhub', 'jobconnect', 'careerlink']),
        ]);
    }

    /**
     * Create Instagram social media
     */
    public function instagram(): static
    {
        return $this->state(fn (array $attributes) => [
            'platform' => 'Instagram',
            'link' => 'https://instagram.com/' . fake()->randomElement(['recruiterhub', 'jobconnect', 'careerlink']),
        ]);
    }

    /**
     * Create YouTube social media
     */
    public function youtube(): static
    {
        return $this->state(fn (array $attributes) => [
            'platform' => 'YouTube',
            'link' => 'https://youtube.com/c/' . fake()->randomElement(['recruiterhub', 'jobconnect', 'careerlink']),
        ]);
    }

    /**
     * Create TikTok social media
     */
    public function tiktok(): static
    {
        return $this->state(fn (array $attributes) => [
            'platform' => 'TikTok',
            'link' => 'https://tiktok.com/@' . fake()->randomElement(['recruiterhub', 'jobconnect', 'careerlink']),
        ]);
    }

    /**
     * Create WhatsApp social media
     */
    public function whatsapp(): static
    {
        return $this->state(fn (array $attributes) => [
            'platform' => 'WhatsApp',
            'link' => 'https://wa.me/' . fake()->numerify('20123456789#'),
        ]);
    }

    /**
     * Create Telegram social media
     */
    public function telegram(): static
    {
        return $this->state(fn (array $attributes) => [
            'platform' => 'Telegram',
            'link' => 'https://t.me/' . fake()->randomElement(['recruiterhub', 'jobconnect', 'careerlink']),
        ]);
    }

    /**
     * Create Snapchat social media
     */
    public function snapchat(): static
    {
        return $this->state(fn (array $attributes) => [
            'platform' => 'Snapchat',
            'link' => 'https://snapchat.com/add/' . fake()->randomElement(['recruiterhub', 'jobconnect', 'careerlink']),
        ]);
    }

    /**
     * Create Pinterest social media
     */
    public function pinterest(): static
    {
        return $this->state(fn (array $attributes) => [
            'platform' => 'Pinterest',
            'link' => 'https://pinterest.com/' . fake()->randomElement(['recruiterhub', 'jobconnect', 'careerlink']),
        ]);
    }

    /**
     * Create Reddit social media
     */
    public function reddit(): static
    {
        return $this->state(fn (array $attributes) => [
            'platform' => 'Reddit',
            'link' => 'https://reddit.com/r/' . fake()->randomElement(['recruiterhub', 'jobconnect', 'careerlink']),
        ]);
    }

    /**
     * Create Discord social media
     */
    public function discord(): static
    {
        return $this->state(fn (array $attributes) => [
            'platform' => 'Discord',
            'link' => 'https://discord.gg/' . fake()->randomElement(['recruiterhub', 'jobconnect', 'careerlink']),
        ]);
    }

    /**
     * Create GitHub social media
     */
    public function github(): static
    {
        return $this->state(fn (array $attributes) => [
            'platform' => 'GitHub',
            'link' => 'https://github.com/' . fake()->randomElement(['recruiterhub', 'jobconnect', 'careerlink']),
        ]);
    }

    /**
     * Create Medium social media
     */
    public function medium(): static
    {
        return $this->state(fn (array $attributes) => [
            'platform' => 'Medium',
            'link' => 'https://medium.com/@' . fake()->randomElement(['recruiterhub', 'jobconnect', 'careerlink']),
        ]);
    }

    /**
     * Create Behance social media
     */
    public function behance(): static
    {
        return $this->state(fn (array $attributes) => [
            'platform' => 'Behance',
            'link' => 'https://behance.net/' . fake()->randomElement(['recruiterhub', 'jobconnect', 'careerlink']),
        ]);
    }
}
