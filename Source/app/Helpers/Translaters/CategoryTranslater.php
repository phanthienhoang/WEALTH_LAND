<?php

namespace App\Helpers\Translaters;

use App\AppCategoryProjectLand;
use App;

class CategoryTranslater
{
    public static function transform(AppCategoryProjectLand $project)
    {
        if (App::isLocale('vi')) {
            $project->category_project_land_name = $project->category_project_land_name_vi;
            return $project;
        }else{
            $project->category_project_land_name = $project->category_project_land_name_en;
            return $project;
        }
    }
}
