<?php
namespace App\Application\Lands\Queries;

use App\AppLand;
use App\Helpers\Translaters\LandTranslater;

class GetLandsPagination {
    public static function query($args = []) {
        $pageSize = $args['pageSize'] ?? 10;
        $pageIndex = $args['pageIndex'] ?? 1;

        $lands = AppLand::skip(($pageIndex - 1) * $pageSize)->take($pageSize)->get();

        $lands->map(function($land) {
            return LandTranslater::transform($land);
        });

        return $lands;
    }
}