<?php
return [
    'api_key'            => env('MYFATOORAH_API_KEY', ''), // token
    'test_mode'          => env('MYFATOORAH_TEST_MODE', true), // true=Test, false=Live
    'country_iso'        => env('MYFATOORAH_COUNTRY', 'EGY'), // KWT, SAU, ARE, JOD, EGY...
    'save_card'          => env('MYFATOORAH_SAVE_CARD', false),
    'webhook_secret_key' => env('MYFATOORAH_WEBHOOK_SECRET', ''), // من لوحة MyFatoorah
    'register_apple_pay' => env('MYFATOORAH_REGISTER_AP', false),
];
