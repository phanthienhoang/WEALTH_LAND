<?php

namespace App\Application\Lands\Queries;

use App\AppLand;
use App\Helpers\Strings\FileStorageMakingUrl;
use App\Helpers\Translaters\LandTranslater;

class GetLandBySeoAlias
{
    public static function query(string $seoAlias)
    {
        $land = AppLand::where('seoAliasVI', $seoAlias)->orWhere('seoAliasEN', $seoAlias)->firstOrFail();

        $land->imgUrls = !isset($land->imgUrls) || empty($land->imgUrls)  ? json_encode([]) : FileStorageMakingUrl::transformListString($land->imgUrls) ;

        $land = LandTranslater::transform($land);

        return $land;
    }
}
