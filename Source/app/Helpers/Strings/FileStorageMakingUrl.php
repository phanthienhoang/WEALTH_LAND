<?php
namespace App\Helpers\Strings;

class FileStorageMakingUrl {
    public static function transformString($str) {
        if(config('app.dev_environment') == 'valet') {
            return dd('valet');
        }

        if (isset($str) || strlen($str) == 0) {
            return '';
        }

        return '/storage/'.$str;
    }

    public static function transformListString($list) {
        $list->map(function($str) {
            return self::transformString($str);
        });

        return $list;
    }
}