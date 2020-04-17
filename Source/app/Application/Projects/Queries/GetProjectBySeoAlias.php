<?php

namespace App\Application\Projects\Queries;

use App\AppProjectLand;
use App\Helpers\Strings\FileStorageMakingUrl;
use App\Helpers\Translaters\ProjectTranslater;

class GetProjectBySeoAlias
{
    public static function query(string $seoAlias)
    {
        $project = AppProjectLand::where('seoAliasVI', $seoAlias)->orWhere('seoAliasEN', $seoAlias)->firstOrFail();

        $project = ProjectTranslater::transform($project);

        $project->imgUrls = !isset($project->imgUrls) ? json_encode([]) : $project->imgUrls;

        $project->imgCoverUrl = FileStorageMakingUrl::transformString($project->imgCoverUrl);
        $project->imgUrls = FileStorageMakingUrl::transformListString($project->imgUrls);

        return $project;
    }

    public static function getProjectByCategoryId(int $id)
    {
        $projects = AppProjectLand::where('category_project_land_id', '=', $id)->get();
        // $project = ProjectTranslater::transform($project);

        $projects->map(function($project) {
            $project->imgCoverUrl = FileStorageMakingUrl::transformString($project->imgCoverUrl);
            $project->imgUrls = FileStorageMakingUrl::transformListString($project->imgUrls);

            return ProjectTranslater::transform($project);
        });

        return $projects;
    }
}
