<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class SetLocaleFromHeader
{
    public function handle(Request $request, Closure $next)
    {
        $header = $request->header('Accept-Language');
        if ($header) {
            $locale = substr(strtolower(trim($header)), 0, 2);
            if (in_array($locale, ['en', 'ar'])) {
                app()->setLocale($locale);
            }
        }
        return $next($request);
    }
}


