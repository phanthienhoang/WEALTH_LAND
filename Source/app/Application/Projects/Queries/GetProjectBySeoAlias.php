<?php

namespace App\Application\Projects\Queries;

use App\AppProjectLand;
use App\Helpers\Translaters\ProjectTranslater;

class GetProjectBySeoAlias {
    public static function query(string $seoAlias) {
        $project = AppProjectLand::where('seoAliasVI', $seoAlias)->orWhere('seoAliasEN', $seoAlias)->firstOrFail();

        $project = ProjectTranslater::transform($project);

        return $project;
    }
}