<?php

namespace App\Helpers\Translaters;

use App\AppLand;
use App;

class LandTranslater
{
    public static function transform(AppLand $land)
    {
        if (App::isLocale('vi')) {
            $land->title = $land->titleVI;
            $land->introduceContent = $land->introduceContentVI;
            $land->seoAlias = $land->seoAliasVI;
        } else {
            $land->title = $land->titleEN;
            $land->introduceContent = $land->introduceContentEN;
            $land->seoAlias = $land->seoAliasEN;
        }
     
        return $land;
    }
}
