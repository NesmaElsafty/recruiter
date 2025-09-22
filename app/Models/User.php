<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\MediaCollections\Models\Media;

class User extends Authenticatable implements HasMedia
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasFactory, Notifiable, SoftDeletes, InteractsWithMedia;

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    protected $guarded = [];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
        'api_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    /**
     * Get the city that the user belongs to.
     */
    public function city()
    {
        return $this->belongsTo(City::class);
    }

    /**
     * Get the major that the user belongs to.
     */
    public function major()
    {
        return $this->belongsTo(Major::class);
    }

    /**
     * Get the feedbacks that the user has.
     */
    public function feedbacks()
    {
        return $this->hasMany(Feedback::class);
    }

    /**
     * Check if user is admin
     */
    public function isAdmin(): bool
    {
        return $this->type === 'admin';
    }

    /**
     * Check if user is recruiter
     */
    public function isRecruiter(): bool
    {
        return $this->type === 'recruiter';
    }

    /**
     * Check if user is candidate
     */
    public function isCandidate(): bool
    {
        return $this->type === 'candidate';
    }

    /**
     * Create a new API token for the user
     */
    public function createToken(string $name = 'auth-token'): string
    {
        $token = bin2hex(random_bytes(40));
        $this->update(['api_token' => $token]);
        return $token;
    }

    /**
     * Get the alerts that the user has.
     */
    public function alerts()
    {
        return $this->hasMany(Alert::class);
    }

    /**
     * Revoke the user's API token
     */
    public function revokeToken(): void
    {
        $this->update(['api_token' => null]);
    }

    /**
     * Register media collections for the user
     */
    public function registerMediaCollections(): void
    {
        $this->addMediaCollection('avatar')
            ->acceptsMimeTypes(['image/jpeg', 'image/png', 'image/gif', 'image/webp'])
            ->singleFile();

        $this->addMediaCollection('documents')
            ->acceptsMimeTypes(['application/pdf', 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'])
            ->acceptsFile(function (Media $media) {
                return $media->size <= 10 * 1024 * 1024; // 10MB limit
            });

        $this->addMediaCollection('resume')
            ->acceptsMimeTypes(['application/pdf', 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'])
            ->singleFile()
            ->acceptsFile(function (Media $media) {
                return $media->size <= 5 * 1024 * 1024; // 5MB limit
            });
    }

    /**
     * Register media conversions for the user
     */
    public function registerMediaConversions(Media $media = null): void
    {
        $this->addMediaConversion('thumb')
            ->width(150)
            ->height(150)
            ->sharpen(10)
            ->performOnCollections('avatar');

        $this->addMediaConversion('medium')
            ->width(300)
            ->height(300)
            ->performOnCollections('avatar');
    }

    
    public function notifications(){
        return $this->belongsToMany(Notification::class, 'notify_users', 'user_id', 'notification_id');
    }

    // messages
    public function messages()
    {
        return $this->hasMany(Message::class);
    }

    // interviews
    public function interviews()
    {
        return $this->hasMany(Interview::class);
    }

}
