<?php

namespace App\Application\Projects\Queries;

use App\AppProjectLand;
use App\Helpers\Translaters\ProjectTranslater;

<<<<<<< HEAD
class GetProjectBySeoAlias
{
    public static function query(string $seoAlias)
    {
=======
class GetProjectBySeoAlias {
    public static function query(string $seoAlias) {
>>>>>>> feature/statistical-count-views
        $project = AppProjectLand::where('seoAliasVI', $seoAlias)->orWhere('seoAliasEN', $seoAlias)->firstOrFail();

        $project = ProjectTranslater::transform($project);

<<<<<<< HEAD
        $project->imgUrls = !isset($project->imgUrls) ? json_encode([]) : $project->imgUrls;

        return $project;
    }
}
=======
        return $project;
    }
}
>>>>>>> feature/statistical-count-views
