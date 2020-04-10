<?php
namespace App\Helpers\Strings;

class FileStorageMakingUrl {
    public static function transformString($str) {
        if(config('app.dev_environment') == 'valet') {
            return dd('valet');
        }

        if (!isset($str) || strlen($str) == 0) {
            return '';
        }

        return 'storage/'.$str;
    }

    public static function transformListString($list) {
        $isListMode = false;
        if (gettype($list) == 'string') {
            $list = json_decode($list);
            $isListMode = true;
        }

        collect($list)->map(function($str) {
            return self::transformString($str);
        });

        if ($isListMode) {
            $list = json_encode($list);
        }

        return $list;
    }
}