<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Default Broadcaster
    |--------------------------------------------------------------------------
    |
    | هنا بتحدد الـ Driver الأساسي للبث. القيم المتاحة:
    | "pusher", "ably", "redis", "log", "null"
    |
    */

    'default' => env('BROADCAST_DRIVER', 'null'),

    /*
    |--------------------------------------------------------------------------
    | Broadcast Connections
    |--------------------------------------------------------------------------
    |
    | كل اتصال بيدعم بروتوكول البث بيتعرف هنا.
    | Laravel بيسمحلك تستخدم Drivers مختلفة في نفس المشروع.
    |
    */

    'connections' => [

        'pusher' => [
            'driver' => 'pusher',
            'key' => env('PUSHER_APP_KEY'),
            'secret' => env('PUSHER_APP_SECRET'),
            'app_id' => env('PUSHER_APP_ID'),
            'options' => [
                'cluster' => 'eu',
                'useTLS' => true
                // لو بتجرب على local وعايز WebSockets مش TLS:
                // 'host' => '127.0.0.1',
                // 'port' => 6001,
                // 'scheme' => 'http'
            ],
        ],

        'ably' => [
            'driver' => 'ably',
            'key' => env('ABLY_KEY'),
        ],

        'redis' => [
            'driver' => 'redis',
            'connection' => 'default',
        ],

        'log' => [
            'driver' => 'log',
        ],

        'null' => [
            'driver' => 'null',
        ],

    ],

];
