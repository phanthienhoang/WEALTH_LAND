<?php

namespace App\Helpers\Translaters;

use App\AppProjectLand;
use App;

class ProjectTranslater
{
    public static function transform(AppProjectLand $project)
    {
        if (App::isLocale('vi')) {
            $project->title = $project->titleVI;
            $project->introduceContent = $project->introduceContentVI;
            $project->description = $project->description_vi;
            $project->seoAlias = $project->seoAliasVI;
            return $project;
        }else{
            $project->title = $project->titleEN;
            $project->introduceContent = $project->introduceContentEN;
            $project->description = $project->description_en;
            $project->seoAlias = $project->seoAliasEN;
            return $project;
        }
    }
}
