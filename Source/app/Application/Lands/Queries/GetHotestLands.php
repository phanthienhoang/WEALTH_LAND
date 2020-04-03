<?php
namespace App\Application\Lands\Queries;

use App\AppLand;
use App\Helpers\Translaters\LandTranslater;

class GetHotestLands {
    public static function query($args = []) {
        $length = $args['length'] ?? 10;

        $lands = AppLand::orderBy('isHot', 'desc')->orderBy('id', 'desc')->take($length)->get();

        $lands->map(function($land) {
            return LandTranslater::transform($land);
        });

        return $lands;
    }
}