<?php

namespace App\Helpers;

class LocalizationHelper
{
    /**
     * Get localized message
     *
     * @param string $key
     * @param array $replace
     * @return string
     */
    public static function getMessage(string $key, array $replace = []): string
    {
        return __("messages.{$key}", $replace);
    }

    /**
     * Get localized field name
     *
     * @param string $field
     * @return string
     */
    public static function getFieldName(string $field): string
    {
        return self::getMessage($field);
    }

    /**
     * Get localized response with success status
     *
     * @param string $messageKey
     * @param mixed $data
     * @param int $statusCode
     * @param array $additional
     * @return \Illuminate\Http\JsonResponse
     */
    public static function successResponse(string $messageKey, $data = null, int $statusCode = 200, array $additional = [])
    {
        $response = [
            'success' => true,
            'message' => self::getMessage($messageKey),
        ];

        if ($data !== null) {
            $response['data'] = $data;
        }

        return response()->json(array_merge($response, $additional), $statusCode);
    }

    /**
     * Get localized response with error status
     *
     * @param string $messageKey
     * @param mixed $error
     * @param int $statusCode
     * @param array $additional
     * @return \Illuminate\Http\JsonResponse
     */
    public static function errorResponse(string $messageKey, $error = null, int $statusCode = 500, array $additional = [])
    {
        $response = [
            'success' => false,
            'message' => self::getMessage($messageKey),
        ];

        if ($error !== null) {
            $response['error'] = $error;
        }

        return response()->json(array_merge($response, $additional), $statusCode);
    }

    /**
     * Get localized field value based on current locale
     *
     * @param object $model
     * @param string $field
     * @return string|null
     */
    public static function getLocalizedField($model, string $field): ?string
    {
        $locale = app()->getLocale();
        $localizedField = $field . '_' . $locale;
        
        if (isset($model->$localizedField)) {
            return $model->$localizedField;
        }
        
        // Fallback to English if localized field doesn't exist
        $fallbackField = $field . '_en';
        if (isset($model->$fallbackField)) {
            return $model->$fallbackField;
        }
        
        // Final fallback to original field
        return $model->$field ?? null;
    }

    /**
     * Get localized field name based on current locale
     *
     * @param string $field
     * @return string
     */
    public static function getLocalizedFieldName(string $field): string
    {
        $locale = app()->getLocale();
        return $field . '_' . $locale;
    }

    /**
     * Get localized status value
     *
     * @param string $status
     * @return string
     */
    public static function getStatusValue(string $status): string
    {
        return self::getMessage("status_{$status}");
    }

    /**
     * Get localized type value
     *
     * @param string $type
     * @return string
     */
    public static function getTypeValue(string $type): string
    {
        return self::getMessage("type_{$type}");
    }

    /**
     * Get localized user type value
     *
     * @param string $userType
     * @return string
     */
    public static function getUserTypeValue(string $userType): string
    {
        return self::getMessage("user_type_{$userType}");
    }

    /**
     * Get localized rating type value
     *
     * @param string $ratingType
     * @return string
     */
    public static function getRatingTypeValue(string $ratingType): string
    {
        return self::getMessage("rating_type_{$ratingType}");
    }

    /**
     * Get localized action name
     *
     * @param string $action
     * @return string
     */
    public static function getActionName(string $action): string
    {
        return self::getMessage("action_{$action}");
    }

    /**
     * Get localized validation message
     *
     * @param string $rule
     * @param array $replace
     * @return string
     */
    public static function getValidationMessage(string $rule, array $replace = []): string
    {
        return self::getMessage("validation_{$rule}", $replace);
    }

    /**
     * Get localized pagination text
     *
     * @param string $key
     * @param array $replace
     * @return string
     */
    public static function getPaginationText(string $key, array $replace = []): string
    {
        return self::getMessage("pagination_{$key}", $replace);
    }

    /**
     * Get localized time format
     *
     * @param string $key
     * @param array $replace
     * @return string
     */
    public static function getTimeFormat(string $key, array $replace = []): string
    {
        return self::getMessage("time_{$key}", $replace);
    }

    /**
     * Transform model with localized values
     *
     * @param object $model
     * @param array $fields
     * @return array
     */
    public static function transformModel($model, array $fields = []): array
    {
        $transformed = [];
        
        foreach ($fields as $field => $type) {
            switch ($type) {
                case 'status':
                    $statusValue = $model->$field ? 'active' : 'inactive';
                    $transformed[$field] = self::getStatusValue($statusValue);
                    break;
                case 'type':
                    $transformed[$field] = self::getTypeValue($model->$field);
                    break;
                case 'user_type':
                    $transformed[$field] = self::getUserTypeValue($model->$field);
                    break;
                case 'rating_type':
                    $transformed[$field] = self::getRatingTypeValue($model->$field);
                    break;
                case 'localized':
                    $transformed[$field] = self::getLocalizedField($model, $field);
                    break;
                default:
                    $transformed[$field] = $model->$field;
            }
        }
        
        return $transformed;
    }
}
