<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class SetLocaleMiddleware
{
    public function handle(Request $request, Closure $next)
    {
        // Get language from header, default to 'en' if not set
        $locale = $request->header('Accept-Language', 'en');

        // You can also validate against your supported languages
        $supportedLocales = ['en', 'ar']; // Add your supported languages

        // If the requested locale is not supported, fall back to default
        if (! in_array($locale, $supportedLocales)) {
            $locale = 'en';
        }

        // Set the application locale
        app()->setLocale($locale);

        return $next($request);
    }
}
