# Dummy Data Generation Guide

This guide explains how to use the factories and commands to generate dummy data for the recruitment platform.

## 🏭 Available Factories

### 1. CityFactory
Generates realistic Egyptian cities with English and Arabic names.

```php
// Basic usage
City::factory()->create();

// Specific cities
City::factory()->cairo()->create();
City::factory()->alexandria()->create();
City::factory()->giza()->create();

// Generate multiple cities
City::factory(10)->create();
```

### 2. MajorFactory
Generates academic majors with English and Arabic names.

```php
// Basic usage
Major::factory()->create();

// Specific majors
Major::factory()->computerScience()->create();
Major::factory()->businessAdministration()->create();
Major::factory()->engineering()->create();

// Generate multiple majors
Major::factory(20)->create();
```

### 3. PlanFactory
Generates subscription plans for candidates and recruiters.

```php
// Basic usage
Plan::factory()->create();

// Candidate plans
Plan::factory()->candidate()->create();
Plan::factory()->candidate()->monthly()->create();
Plan::factory()->candidate()->yearly()->create();

// Recruiter plans
Plan::factory()->recruiter()->create();
Plan::factory()->recruiter()->premium()->create();

// Plan states
Plan::factory()->active()->create();
Plan::factory()->inactive()->create();
Plan::factory()->free()->create();
```

### 4. FeatureFactory
Generates platform features with English and Arabic names.

```php
// Basic usage
Feature::factory()->create();

// Specific feature types
Feature::factory()->jobSearch()->create();
Feature::factory()->profile()->create();
Feature::factory()->recruiter()->create();
Feature::factory()->premium()->create();

// Generate multiple features
Feature::factory(25)->create();
```

### 5. UserFactory
Generates users with different types and realistic data.

```php
// Basic usage
User::factory()->create();

// Specific user types
User::factory()->candidate()->create();
User::factory()->recruiter()->create();
User::factory()->admin()->create();

// User states
User::factory()->verified()->create();
User::factory()->unverifiedEmail()->create();

// With specific relationships
$city = City::factory()->create();
$major = Major::factory()->create();

User::factory()->candidate()->inCity($city)->withMajor($major)->create();
User::factory()->recruiter()->withCompany('Tech Corp')->create();
```

### 6. FeedbackFactory
Generates realistic feedback with different ratings and types.

```php
// Basic usage
Feedback::factory()->create();

// Rating types
Feedback::factory()->positive()->create();
Feedback::factory()->negative()->create();
Feedback::factory()->neutral()->create();

// Feedback types
Feedback::factory()->app()->create();
Feedback::factory()->service()->create();
Feedback::factory()->job()->create();
Feedback::factory()->company()->create();
Feedback::factory()->recruiter()->create();
Feedback::factory()->candidate()->create();

// States
Feedback::factory()->active()->create();
Feedback::factory()->inactive()->create();
```

### 7. ContactUsFactory
Generates contact information for different office locations.

```php
// Basic usage
ContactUs::factory()->create();

// Specific locations
ContactUs::factory()->cairo()->create();
ContactUs::factory()->alexandria()->create();
ContactUs::factory()->giza()->create();
ContactUs::factory()->newCapital()->create();

// Office types
ContactUs::factory()->headquarters()->create();
ContactUs::factory()->branch()->create();
```

### 8. SocialMediaFactory
Generates social media links for different platforms.

```php
// Basic usage
SocialMedia::factory()->create();

// Specific platforms
SocialMedia::factory()->facebook()->create();
SocialMedia::factory()->twitter()->create();
SocialMedia::factory()->linkedin()->create();
SocialMedia::factory()->instagram()->create();
SocialMedia::factory()->youtube()->create();
SocialMedia::factory()->tiktok()->create();
SocialMedia::factory()->whatsapp()->create();
SocialMedia::factory()->telegram()->create();
```

### 9. TermFactory
Generates terms and policies with English and Arabic content.

```php
// Basic usage
Term::factory()->create();

// Specific term types
Term::factory()->privacy()->create();
Term::factory()->terms()->create();
Term::factory()->cookies()->create();
Term::factory()->refund()->create();
Term::factory()->shipping()->create();
Term::factory()->support()->create();

// User types
Term::factory()->candidate()->create();
Term::factory()->recruiter()->create();
Term::factory()->admin()->create();
Term::factory()->allUsers()->create();

// States
Term::factory()->active()->create();
Term::factory()->inactive()->create();
```

## 🚀 Commands

### Generate Dummy Data Command

Use the custom command to generate large amounts of dummy data:

```bash
# Generate default amounts
php artisan dummy:generate

# Generate specific amounts
php artisan dummy:generate --cities=50 --users=500 --feedbacks=1000

# Clear existing data and generate new
php artisan dummy:generate --clear

# All options
php artisan dummy:generate \
  --cities=20 \
  --majors=30 \
  --plans=15 \
  --features=25 \
  --users=100 \
  --feedbacks=200 \
  --contact-us=5 \
  --social-media=10 \
  --terms=12 \
  --clear
```

### Database Seeder

Use the DummyDataSeeder for a quick setup:

```bash
# Run the seeder
php artisan db:seed --class=DummyDataSeeder

# Or add it to DatabaseSeeder.php
```

## 📊 Example Usage

### Generate a Complete Dataset

```php
// In a seeder or tinker
use App\Models\{City, Major, Plan, Feature, User, Feedback, ContactUs, SocialMedia, Term};

// Create cities and majors first
$cities = City::factory(10)->create();
$majors = Major::factory(15)->create();

// Create plans
$candidatePlans = Plan::factory(5)->candidate()->create();
$recruiterPlans = Plan::factory(3)->recruiter()->create();

// Create features
$features = Feature::factory(20)->create();

// Create users
$candidates = User::factory(50)->candidate()->create();
$recruiters = User::factory(20)->recruiter()->create();
$admins = User::factory(3)->admin()->create();

// Create feedbacks
$feedbacks = Feedback::factory(100)->create();

// Create contact info
$contactUs = ContactUs::factory(3)->create();

// Create social media
$socialMedia = SocialMedia::factory(8)->create();

// Create terms
$terms = Term::factory(10)->create();
```

### Generate Realistic Test Scenarios

```php
// Create a tech company scenario
$cairo = City::factory()->cairo()->create();
$csMajor = Major::factory()->computerScience()->create();

$techCompany = User::factory()
    ->recruiter()
    ->inCity($cairo)
    ->withCompany('Tech Solutions Inc.')
    ->withJobTitle('Senior HR Manager')
    ->create();

$candidates = User::factory(10)
    ->candidate()
    ->inCity($cairo)
    ->withMajor($csMajor)
    ->create();

// Create feedback for the company
Feedback::factory(5)
    ->company()
    ->positive()
    ->create(['user_id' => $techCompany->id]);
```

## 🎯 Best Practices

1. **Order Matters**: Always create cities and majors before users
2. **Use Relationships**: Leverage the factory relationships for realistic data
3. **Mix Types**: Use different factory states for variety
4. **Batch Operations**: Use `factory(count)->create()` for efficiency
5. **Test Scenarios**: Create specific scenarios for testing

## 🔧 Customization

You can extend any factory by adding new states:

```php
// In CityFactory.php
public function popular(): static
{
    return $this->state(fn (array $attributes) => [
        'name_en' => fake()->randomElement(['Cairo', 'Alexandria', 'Giza']),
        'name_ar' => fake()->randomElement(['القاهرة', 'الإسكندرية', 'الجيزة']),
    ]);
}
```

## 📈 Performance Tips

- Use `factory(count)->create()` instead of loops
- Create related models in batches
- Use `make()` instead of `create()` for testing without database writes
- Consider using `factory()->count(1000)->make()` for large datasets

## 🐛 Troubleshooting

### Common Issues

1. **Foreign Key Constraints**: Always create parent models first
2. **Unique Constraints**: Use `unique()` modifier for email fields
3. **Memory Issues**: Process large datasets in chunks
4. **Validation Errors**: Check model fillable attributes

### Debug Commands

```bash
# Check database state
php artisan tinker
>>> App\Models\User::count()
>>> App\Models\City::count()

# Clear specific data
php artisan tinker
>>> App\Models\User::truncate()
>>> App\Models\Feedback::truncate()
```

Happy data generation! 🎉
