<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Feedback>
 */
class FeedbackFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $ratingType = fake()->randomElement(['app', 'service', 'job', 'company', 'recruiter', 'candidate']);
        $rating = fake()->numberBetween(1, 5);
        
        return [
            'user_id' => User::factory(),
            'comment' => $this->generateComment($ratingType, $rating),
            'rating' => $rating,
            'rating_type' => $ratingType,
            'is_active' => fake()->boolean(90), // 90% chance of being active
        ];
    }

    /**
     * Generate appropriate comment based on rating type and rating
     */
    private function generateComment(string $ratingType, int $rating): string
    {
        $comments = [
            'app' => [
                5 => [
                    'Excellent app! Very user-friendly and intuitive.',
                    'Love the interface and features. Highly recommended!',
                    'Best recruitment app I\'ve used. Great job!',
                    'Amazing platform with excellent functionality.',
                    'Perfect app for job searching. Easy to use!',
                ],
                4 => [
                    'Good app overall, minor improvements needed.',
                    'Solid platform with good features.',
                    'Pretty good, but could use some enhancements.',
                    'Nice app, works well most of the time.',
                    'Good experience, few bugs here and there.',
                ],
                3 => [
                    'Average app, nothing special.',
                    'It\'s okay, could be better.',
                    'Decent functionality but needs work.',
                    'Not bad, but not great either.',
                    'Mediocre experience overall.',
                ],
                2 => [
                    'Below average, many issues.',
                    'Needs significant improvements.',
                    'Frustrating to use at times.',
                    'Not very user-friendly.',
                    'Has potential but needs work.',
                ],
                1 => [
                    'Terrible app, very buggy.',
                    'Worst recruitment app I\'ve used.',
                    'Completely unusable.',
                    'Waste of time, avoid this app.',
                    'Extremely poor user experience.',
                ],
            ],
            'service' => [
                5 => [
                    'Outstanding customer service!',
                    'Excellent support team, very helpful.',
                    'Best customer service I\'ve experienced.',
                    'Quick response and great assistance.',
                    'Professional and efficient service.',
                ],
                4 => [
                    'Good customer service overall.',
                    'Helpful support team.',
                    'Satisfactory service experience.',
                    'Good response time and assistance.',
                    'Decent customer support.',
                ],
                3 => [
                    'Average service, nothing special.',
                    'Okay support, could be better.',
                    'Mediocre customer service.',
                    'Standard service experience.',
                    'Acceptable but not outstanding.',
                ],
                2 => [
                    'Poor customer service.',
                    'Slow response times.',
                    'Unhelpful support team.',
                    'Below average service quality.',
                    'Needs improvement in service.',
                ],
                1 => [
                    'Terrible customer service.',
                    'No response to inquiries.',
                    'Worst support experience ever.',
                    'Completely unhelpful staff.',
                    'Avoid this service at all costs.',
                ],
            ],
            'job' => [
                5 => [
                    'Perfect job opportunity!',
                    'Excellent role with great company.',
                    'Amazing job, highly recommend!',
                    'Best job I\'ve found through this platform.',
                    'Outstanding opportunity and company.',
                ],
                4 => [
                    'Good job opportunity.',
                    'Nice role with decent company.',
                    'Solid job posting.',
                    'Good opportunity overall.',
                    'Decent job with good benefits.',
                ],
                3 => [
                    'Average job opportunity.',
                    'Okay role, nothing special.',
                    'Mediocre job posting.',
                    'Standard job opportunity.',
                    'Acceptable but not outstanding.',
                ],
                2 => [
                    'Below average job opportunity.',
                    'Poor job description.',
                    'Not what was advertised.',
                    'Disappointing job posting.',
                    'Needs better job details.',
                ],
                1 => [
                    'Terrible job opportunity.',
                    'Misleading job description.',
                    'Waste of time applying.',
                    'Worst job posting ever.',
                    'Completely unprofessional.',
                ],
            ],
            'company' => [
                5 => [
                    'Excellent company to work for!',
                    'Great company culture and values.',
                    'Amazing workplace environment.',
                    'Best company I\'ve worked with.',
                    'Outstanding employer with great benefits.',
                ],
                4 => [
                    'Good company overall.',
                    'Nice workplace culture.',
                    'Solid company with good values.',
                    'Decent employer.',
                    'Good company to work for.',
                ],
                3 => [
                    'Average company.',
                    'Okay workplace environment.',
                    'Mediocre company culture.',
                    'Standard employer.',
                    'Acceptable company.',
                ],
                2 => [
                    'Below average company.',
                    'Poor workplace culture.',
                    'Not a great employer.',
                    'Disappointing company experience.',
                    'Needs improvement in company culture.',
                ],
                1 => [
                    'Terrible company to work for.',
                    'Worst employer ever.',
                    'Toxic workplace environment.',
                    'Avoid this company.',
                    'Completely unprofessional company.',
                ],
            ],
            'recruiter' => [
                5 => [
                    'Excellent recruiter, very professional!',
                    'Best recruiter I\'ve worked with.',
                    'Outstanding communication and support.',
                    'Amazing recruiter, highly recommend!',
                    'Perfect recruiter experience.',
                ],
                4 => [
                    'Good recruiter overall.',
                    'Professional and helpful.',
                    'Solid recruiter experience.',
                    'Decent communication.',
                    'Good recruiter to work with.',
                ],
                3 => [
                    'Average recruiter.',
                    'Okay communication.',
                    'Mediocre recruiter experience.',
                    'Standard recruiter service.',
                    'Acceptable but not outstanding.',
                ],
                2 => [
                    'Below average recruiter.',
                    'Poor communication.',
                    'Not very helpful.',
                    'Disappointing recruiter experience.',
                    'Needs improvement in service.',
                ],
                1 => [
                    'Terrible recruiter.',
                    'Worst recruiter experience.',
                    'No communication or support.',
                    'Completely unprofessional.',
                    'Avoid this recruiter.',
                ],
            ],
            'candidate' => [
                5 => [
                    'Excellent candidate, highly qualified!',
                    'Best candidate I\'ve interviewed.',
                    'Outstanding skills and experience.',
                    'Perfect fit for the role.',
                    'Amazing candidate, highly recommend!',
                ],
                4 => [
                    'Good candidate overall.',
                    'Qualified and professional.',
                    'Solid candidate experience.',
                    'Decent skills and background.',
                    'Good candidate to consider.',
                ],
                3 => [
                    'Average candidate.',
                    'Okay qualifications.',
                    'Mediocre candidate experience.',
                    'Standard candidate profile.',
                    'Acceptable but not outstanding.',
                ],
                2 => [
                    'Below average candidate.',
                    'Poor qualifications.',
                    'Not suitable for the role.',
                    'Disappointing candidate experience.',
                    'Needs improvement in skills.',
                ],
                1 => [
                    'Terrible candidate.',
                    'Worst candidate experience.',
                    'Completely unqualified.',
                    'Unprofessional behavior.',
                    'Avoid this candidate.',
                ],
            ],
        ];

        return fake()->randomElement($comments[$ratingType][$rating] ?? ['No comment provided.']);
    }

    /**
     * Create positive feedback (4-5 stars)
     */
    public function positive(): static
    {
        return $this->state(fn (array $attributes) => [
            'rating' => fake()->numberBetween(4, 5),
            'comment' => $this->generateComment($attributes['rating_type'] ?? 'app', fake()->numberBetween(4, 5)),
        ]);
    }

    /**
     * Create negative feedback (1-2 stars)
     */
    public function negative(): static
    {
        return $this->state(fn (array $attributes) => [
            'rating' => fake()->numberBetween(1, 2),
            'comment' => $this->generateComment($attributes['rating_type'] ?? 'app', fake()->numberBetween(1, 2)),
        ]);
    }

    /**
     * Create neutral feedback (3 stars)
     */
    public function neutral(): static
    {
        return $this->state(fn (array $attributes) => [
            'rating' => 3,
            'comment' => $this->generateComment($attributes['rating_type'] ?? 'app', 3),
        ]);
    }

    /**
     * Create app feedback
     */
    public function app(): static
    {
        return $this->state(fn (array $attributes) => [
            'rating_type' => 'app',
            'comment' => $this->generateComment('app', $attributes['rating'] ?? fake()->numberBetween(1, 5)),
        ]);
    }

    /**
     * Create service feedback
     */
    public function service(): static
    {
        return $this->state(fn (array $attributes) => [
            'rating_type' => 'service',
            'comment' => $this->generateComment('service', $attributes['rating'] ?? fake()->numberBetween(1, 5)),
        ]);
    }

    /**
     * Create job feedback
     */
    public function job(): static
    {
        return $this->state(fn (array $attributes) => [
            'rating_type' => 'job',
            'comment' => $this->generateComment('job', $attributes['rating'] ?? fake()->numberBetween(1, 5)),
        ]);
    }

    /**
     * Create company feedback
     */
    public function company(): static
    {
        return $this->state(fn (array $attributes) => [
            'rating_type' => 'company',
            'comment' => $this->generateComment('company', $attributes['rating'] ?? fake()->numberBetween(1, 5)),
        ]);
    }

    /**
     * Create recruiter feedback
     */
    public function recruiter(): static
    {
        return $this->state(fn (array $attributes) => [
            'rating_type' => 'recruiter',
            'comment' => $this->generateComment('recruiter', $attributes['rating'] ?? fake()->numberBetween(1, 5)),
        ]);
    }

    /**
     * Create candidate feedback
     */
    public function candidate(): static
    {
        return $this->state(fn (array $attributes) => [
            'rating_type' => 'candidate',
            'comment' => $this->generateComment('candidate', $attributes['rating'] ?? fake()->numberBetween(1, 5)),
        ]);
    }

    /**
     * Create active feedback
     */
    public function active(): static
    {
        return $this->state(fn (array $attributes) => [
            'is_active' => true,
        ]);
    }

    /**
     * Create inactive feedback
     */
    public function inactive(): static
    {
        return $this->state(fn (array $attributes) => [
            'is_active' => false,
        ]);
    }
}
