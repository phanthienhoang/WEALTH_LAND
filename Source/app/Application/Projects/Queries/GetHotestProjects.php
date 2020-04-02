<?php

namespace App\Application\Projects\Queries;

use App\AppProjectLand;
use App\Helpers\Translaters\ProjectTranslater;

class GetHotestProjects {
    public static function query($args = []) {
        $length = $args['length'] ?? 10;
        
        $projects = AppProjectLand::orderBy('isHot', 'desc')->take($length)->get();

        $projects->map(function($project) {
            return ProjectTranslater::transform($project);
        });

        return $projects;
    }
}