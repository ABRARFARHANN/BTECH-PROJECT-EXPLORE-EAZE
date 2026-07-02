<?php

if (!function_exists('app_config')) {
    function app_config($key, $default = '')
    {
        $value = getenv($key);
        return $value === false ? $default : $value;
    }
}

if (!defined('GOOGLE_MAPS_API_KEY')) {
    define('GOOGLE_MAPS_API_KEY', app_config('GOOGLE_MAPS_API_KEY'));
}

if (!defined('BREEZOMETER_API_KEY')) {
    define('BREEZOMETER_API_KEY', app_config('BREEZOMETER_API_KEY'));
}

