<?php

namespace App\Http\Controllers;

use App\Application\Projects\Queries\GetProjectBySeoAlias;
use App\Application\Projects\Queries\GetProjectListPagination;
use Illuminate\Http\Request;

class ProjectsController extends Controller
{
    /** Web actions */
    public function listPagination() {
        $projectList = GetProjectListPagination::query();

        $compactData = [
            'projects' => $projectList
        ];

        return view('pages.projects.projects')->with($compactData);
    }

    public function single($seoAlias) {
        $project = GetProjectBySeoAlias::query($seoAlias);

        $compactData = [
            'project' => $project
        ];

        return view('pages.projects.project-single')->with($compactData);
    }
}
