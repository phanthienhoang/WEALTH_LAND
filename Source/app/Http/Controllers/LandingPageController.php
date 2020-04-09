<?php

namespace App\Http\Controllers;

use App\Application\Banners\Queries\GetActiveBanners;
use App\Application\Lands\Queries\GetHotestLands;
use App\Application\News\Queries\GetLastNewsList;
use App\Application\Projects\Queries\GetHotestProjects;
use Illuminate\Http\Request;

class LandingPageController extends Controller
{
    public function index()
    {
        $lastestNews = GetLastNewsList::query([
            'length' => 3
        ]);

        $hotestProjects = GetHotestProjects::query([
            'length' => 6
        ]);

        $hotestLands = GetHotestLands::query([
            'length' => 6
        ]);

        $banners = GetActiveBanners::query();

        $compactData = [
            'lastestNews' => $lastestNews,
            'hotestProjects' => $hotestProjects,
            'hotestLands' => $hotestLands,
            'banners' => $banners
        ];

        return view('pages.landing-page.index')->with($compactData);
    }
}
