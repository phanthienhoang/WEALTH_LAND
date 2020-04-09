<?php
namespace App\Application\Lands\Queries;

use App\AppLand;
use App\Helpers\Strings\FileStorageMakingUrl;
use App\Helpers\Translaters\LandTranslater;

class GetHotestLands {
    public static function query($args = []) {
        $length = $args['length'] ?? 10;

        $lands = AppLand::orderBy('isHot', 'desc')->orderBy('id', 'desc')->take($length)->get();

        $lands->map(function($land) {
            $land = LandTranslater::transform($land);
            $land->imgCoverUrl = FileStorageMakingUrl::transformString($land->imgCoverUrl);
            $land->imgUrls = FileStorageMakingUrl::transformListString($land->imgUrls);
            return $land;
        });

        return $lands;
    }
}