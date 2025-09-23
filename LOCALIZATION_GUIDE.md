# Comprehensive Localization Implementation Guide

This guide explains how to use the comprehensive localization system implemented in the Laravel recruiter application.

## Overview

The application now supports English and Arabic localization for:
- API response messages
- Field names in responses
- Status values (active, inactive, pending, etc.)
- Type values (admin, candidate, recruiter, etc.)
- User type values
- Rating type values
- Action names (create, update, delete, etc.)
- Validation messages
- Pagination text
- Time formats
- Model attributes with `_en` and `_ar` suffixes

## Components

### 1. SetLocaleMiddleware

Located at `app/Http/Middleware/SetLocaleMiddleware.php`

**Purpose**: Automatically sets the application locale based on the `Accept-Language` header.

**Supported Languages**: 
- `en` (English) - Default
- `ar` (Arabic)

**Usage**: The middleware is automatically applied to all API routes.

### 2. Comprehensive Language Files

Located in `resources/lang/`:
- `en/messages.php` - Complete English translations (260+ entries)
- `ar/messages.php` - Complete Arabic translations (260+ entries)

**Translation Categories**:
- General messages (success, error, failed, etc.)
- CRUD operations for all entities
- Field names for all models
- Status values (active, inactive, pending, etc.)
- Type values (admin, candidate, recruiter, etc.)
- User type values
- Rating type values (excellent, good, average, etc.)
- Common actions (create, update, delete, etc.)
- Validation messages
- Pagination text
- Time formats

### 3. Enhanced LocalizationHelper

Located at `app/Helpers/LocalizationHelper.php`

**Core Methods**:
- `getMessage($key, $replace = [])` - Get localized message
- `getFieldName($field)` - Get localized field name
- `successResponse($messageKey, $data, $statusCode, $additional)` - Create success response
- `errorResponse($messageKey, $error, $statusCode, $additional)` - Create error response
- `getLocalizedField($model, $field)` - Get localized field value from model
- `getLocalizedFieldName($field)` - Get localized field name with locale suffix

**Specialized Methods**:
- `getStatusValue($status)` - Get localized status value
- `getTypeValue($type)` - Get localized type value
- `getUserTypeValue($userType)` - Get localized user type value
- `getRatingTypeValue($ratingType)` - Get localized rating type value
- `getActionName($action)` - Get localized action name
- `getValidationMessage($rule, $replace = [])` - Get localized validation message
- `getPaginationText($key, $replace = [])` - Get localized pagination text
- `getTimeFormat($key, $replace = [])` - Get localized time format
- `transformModel($model, $fields = [])` - Transform model with localized values

## Usage Examples

### 1. Using LocalizationHelper in Controllers

```php
use App\Helpers\LocalizationHelper;

// Success response
return LocalizationHelper::successResponse(
    'message_sent_successfully',
    $data,
    201
);

// Error response
return LocalizationHelper::errorResponse(
    'failed_to_send_message',
    $e->getMessage(),
    500
);
```

### 2. Getting Localized Messages and Values

```php
// Get message
$message = LocalizationHelper::getMessage('messages_retrieved_successfully');

// Get field name
$fieldName = LocalizationHelper::getFieldName('name');

// Get status value
$status = LocalizationHelper::getStatusValue('active'); // Returns "Active" or "نشط"

// Get type value
$type = LocalizationHelper::getTypeValue('candidate'); // Returns "Candidate" or "مرشح"

// Get user type value
$userType = LocalizationHelper::getUserTypeValue('recruiter'); // Returns "Recruiter" or "مسؤول توظيف"

// Get rating type value
$rating = LocalizationHelper::getRatingTypeValue('excellent'); // Returns "Excellent" or "ممتاز"

// Get action name
$action = LocalizationHelper::getActionName('create'); // Returns "Create" or "إنشاء"

// Get validation message
$validation = LocalizationHelper::getValidationMessage('required'); // Returns "This field is required" or "هذا الحقل مطلوب"

// Get pagination text
$pagination = LocalizationHelper::getPaginationText('previous'); // Returns "Previous" or "السابق"

// Get time format
$time = LocalizationHelper::getTimeFormat('minutes_ago', ['count' => 5]); // Returns "5 minutes ago" or "منذ 5 دقيقة"
```

### 3. Using Localized Fields in Resources

```php
public function toArray(Request $request): array
{
    $locale = app()->getLocale();
    
    return [
        'id' => $this->id,
        'name' => $this->{"name_{$locale}"} ?? $this->name_en,
        'type' => $this->type,
        'type_label' => LocalizationHelper::getTypeValue($this->type),
        'is_active' => (bool)$this->is_active,
        'status' => $this->is_active ? LocalizationHelper::getStatusValue('active') : LocalizationHelper::getStatusValue('inactive'),
    ];
}
```

### 4. Getting Localized Field Values

```php
// From a model with name_en and name_ar fields
$localizedName = LocalizationHelper::getLocalizedField($model, 'name');

// Transform entire model with localized values
$transformed = LocalizationHelper::transformModel($model, [
    'name' => 'localized',
    'type' => 'type',
    'is_active' => 'status',
    'rating_type' => 'rating_type'
]);
```

## API Usage

### Setting Language

Send the `Accept-Language` header with your API requests:

```bash
# English
curl -H "Accept-Language: en" https://your-api.com/api/messages

# Arabic
curl -H "Accept-Language: ar" https://your-api.com/api/messages
```

### Response Examples

**English Response:**
```json
{
    "success": true,
    "message": "Messages retrieved successfully",
    "data": [
        {
            "id": 1,
            "name": "English Name",
            "type": "candidate",
            "type_label": "Candidate",
            "is_active": true,
            "status": "Active",
            "rating_type": "excellent",
            "rating_type_label": "Excellent"
        }
    ]
}
```

**Arabic Response:**
```json
{
    "success": true,
    "message": "تم جلب الرسائل بنجاح",
    "data": [
        {
            "id": 1,
            "name": "الاسم العربي",
            "type": "candidate",
            "type_label": "مرشح",
            "is_active": true,
            "status": "نشط",
            "rating_type": "excellent",
            "rating_type_label": "ممتاز"
        }
    ]
}
```

## Updated Controllers

The following controllers have been updated to use the localization system:

1. **MessageController** - All message-related responses
2. **TermController** - Term management responses
3. **AlertController** - Alert management responses
4. **NotificationController** - Notification responses

## Updated Resources

1. **MajorResource** - Returns localized `name` field
2. **CityResource** - Returns localized `name` field (newly created)
3. **UserResource** - Uses CityResource and MajorResource, includes localized type and status
4. **TermResource** - Returns localized title/description, type labels, user type labels, and status
5. **FeedbackResource** - Returns localized rating type labels and status
6. **PlanResource** - Returns localized name/description and features

## Adding New Translations

### 1. Add to Language Files

**English (`resources/lang/en/messages.php`):**
```php
'new_message_key' => 'New English Message',
```

**Arabic (`resources/lang/ar/messages.php`):**
```php
'new_message_key' => 'رسالة إنجليزية جديدة',
```

### 2. Use in Controllers

```php
return LocalizationHelper::successResponse('new_message_key');
```

## Best Practices

1. **Always provide both English and Arabic translations**
2. **Use descriptive message keys** (e.g., `user_created_successfully`)
3. **Keep translations consistent** across the application
4. **Test both languages** when implementing new features
5. **Use the LocalizationHelper** instead of hardcoded messages

## Testing

The comprehensive localization system has been tested and verified to work correctly with:
- Message translations (260+ entries)
- Field name translations
- Status value translations
- Type value translations
- User type translations
- Rating type translations
- Action name translations
- Validation message translations
- Pagination text translations
- Time format translations
- Localized field values
- Model transformation
- Response helpers
- Middleware locale detection

## Translation Statistics

- **Total Translation Keys**: 260+
- **English Translations**: Complete coverage
- **Arabic Translations**: Complete coverage
- **Categories Covered**: 12 major categories
- **Controllers Updated**: 4 major controllers
- **Resources Updated**: 6 API resources
- **Helper Methods**: 15+ specialized methods

## Migration Notes

- Existing hardcoded messages have been replaced with localized versions
- Resources now return both localized and original field values
- The `Accept-Language` header is used for locale detection
- Fallback to English is implemented for missing translations
