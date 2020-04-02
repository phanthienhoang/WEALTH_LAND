<?php

namespace App\Http\Controllers;

use App\Application\News\Queries\GetLastNewsList;
use App\Application\Projects\Queries\GetHotestProjects;
use Illuminate\Http\Request;

class LandingPageController extends Controller
{
    public function index() {
        $lastestNews = GetLastNewsList::query([
            'length' => 3
        ]);

        $hotestProjects = GetHotestProjects::query([
            'length' => 6
        ]);

        $compactData = [
            'lastestNews' => $lastestNews,
            'hotestProjects' => $hotestProjects
        ];

        return view('pages.landing-page.index')->with($compactData);
    }


}
