<?php

namespace App\Helpers\Translaters;

use App\AppProjectLand;

class ProjectTranslater
{
    public static function transform(AppProjectLand $project)
    {
        $project->title = $project->titleVI;
        $project->introduceContent = $project->introduceContentVI;
        $project->seoAlias = $project->seoAliasVI;
        return $project;
    }
}
