<?php

namespace App\Helpers\Translaters;

use App\AppPartner;
use App;

class PartnerTranslater
{
    public static function transform(AppPartner $project)
    {
        if (App::isLocale('vi')) {
            $project->title = $project->title_vi;
            $project->description = $project->description_vi;
            $project->content = $project->content_vi;
            return $project;
        }else{
            $project->title = $project->title_en;
            $project->description = $project->description_en;
            $project->content = $project->content_en;
            return $project;
        }
    }
}
