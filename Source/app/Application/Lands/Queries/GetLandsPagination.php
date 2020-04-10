<?php
namespace App\Application\Lands\Queries;

use App\AppLand;
use App\Helpers\Strings\FileStorageMakingUrl;
use App\Helpers\Translaters\LandTranslater;

class GetLandsPagination {
    public static function query($args = []) {
        $pageSize = $args['pageSize'] ?? 12;
        $pageIndex = $args['pageIndex'] ?? 1;

        $lands = AppLand::skip(($pageIndex - 1) * $pageSize)->take($pageSize)->get();

        $lands->map(function($land) {
            $land = LandTranslater::transform($land);
            $land->imgCoverUrl = FileStorageMakingUrl::transformString($land->imgCoverUrl);
            $land->imgUrls = FileStorageMakingUrl::transformListString($land->imgUrls);
            return $land;
        });

        return $lands;
    }
}