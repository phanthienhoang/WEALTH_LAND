<?php

namespace App\Helpers\Translaters;
use App\AppIntroduction;
use App;

class ItroductionTranslater
{
    public static function transform(AppIntroduction $project)
    {
        if (App::isLocale('vi')) {
            $project->title = $project->title_vi;
            $project->description = $project->description_vi;
            $project->content = $project->content_vi;
            $project->slug = $project->slug_vi;

            return $project;
        }else{
            $project->title = $project->title_en;
            $project->description = $project->description_en;
            $project->content = $project->content_en;
            $project->slug = $project->slug_en;

            return $project;
        }
    }
}
