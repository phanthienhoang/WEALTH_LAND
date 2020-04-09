<?php

namespace App\Application\Projects\Queries;

use App\AppProjectLand;
use App\Helpers\Strings\FileStorageMakingUrl;
use App\Helpers\Translaters\ProjectTranslater;

class GetHotestProjects {
    public static function query($args = []) {
        $length = $args['length'] ?? 10;
        
        $projects = AppProjectLand::orderBy('isHot', 'desc')->take($length)->get();

        $projects->map(function($project) {
            $project->imgCoverUrl = FileStorageMakingUrl::transformString($project->imgCoverUrl);
            $project->imgUrls = FileStorageMakingUrl::transformListString($project->imgUrls);

            return ProjectTranslater::transform($project);
        });

        return $projects;
    }
}