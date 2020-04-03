<?php

namespace App\Application\Lands\Queries;

use App\AppLand;
use App\Helpers\Translaters\LandTranslater;

class GetLandBySeoAlias
{
    public static function query(string $seoAlias)
    {
        $land = AppLand::where('seoAliasVI', $seoAlias)->orWhere('seoAliasEN', $seoAlias)->firstOrFail();

        $land = LandTranslater::transform($land);

        return $land;
    }
}
