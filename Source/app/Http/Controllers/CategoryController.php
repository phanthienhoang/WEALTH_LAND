<?php

namespace App\Http\Controllers;

use App\AppCategoryProjectLand;
use App\Application\News\Queries\GetNewsListByCategory;
use App\Application\Projects\Queries\GetProjectBySeoAlias;
use App\AppNewsPostCategory;

class CategoryController extends Controller
{
    /** Web actions */
    public function filter(AppNewsPostCategory $appnewspostcategory)
    {
        $newsList = GetNewsListByCategory::query($appnewspostcategory->id);

        return view('pages.news.news')->with('list', $newsList);
    }

    /** Web actions */
    public function getProject(AppCategoryProjectLand $appcategoryprojectland)
    {
        $projectList = GetProjectBySeoAlias::getProjectByCategoryId($appcategoryprojectland->id);

        $compactData = [
            'projects' => $projectList,
            'message' => $appcategoryprojectland->category_project_land_name_vi
        ];

        return view('pages.projects.projects')->with($compactData);
    }
}
