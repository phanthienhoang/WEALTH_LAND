<?php

namespace App\Application\Projects\Queries;

use App\AppProjectLand;
use App\Helpers\Strings\FileStorageMakingUrl;
use App\Helpers\Translaters\ProjectTranslater;

class GetProjectListPagination {
    public static function query($args = []) {
        $pageSize = $args['pageSize'] ?? 10;
        $pageIndex = $args['pageIndex'] ?? 1;

        $projects = AppProjectLand::skip(($pageIndex - 1) * $pageSize)->take($pageSize)->get();

        $projects->map(function($project) {
            $project->imgCoverUrl = FileStorageMakingUrl::transformString($project->imgCoverUrl);

            $project->imgUrls = FileStorageMakingUrl::transformListString($project->imgUrls);
            
            return ProjectTranslater::transform($project);
        });

        return $projects;
    }   
}