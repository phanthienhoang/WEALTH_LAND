<?php

namespace App\Application\Lands\Queries;

use App\AppLand;
use App\Helpers\Translaters\LandTranslater;

class GetLandBySeoAlias
{
    public static function query(string $seoAlias)
    {
        $land = AppLand::where('seoAliasVI', $seoAlias)->orWhere('seoAliasEN', $seoAlias)->firstOrFail();

<<<<<<< HEAD
        $land->imgUrls = !isset($land->imgUrls) || empty($land->imgUrls)  ? json_encode([]) : $land->imgUrls;

=======
>>>>>>> feature/statistical-count-views
        $land = LandTranslater::transform($land);

        return $land;
    }
<<<<<<< HEAD
}
=======
}
>>>>>>> feature/statistical-count-views
