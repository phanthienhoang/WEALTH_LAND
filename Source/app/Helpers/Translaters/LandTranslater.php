<?php

namespace App\Helpers\Translaters;

use App\AppLand;

class LandTranslater
{
    public static function transform(AppLand $land)
    {
        $land->title = $land->titleVI;
        $land->introduceContent = $land->introduceContentVI   ;
        $land->seoAlias = $land->seoAliasVI;
        return $land;
    }
}
