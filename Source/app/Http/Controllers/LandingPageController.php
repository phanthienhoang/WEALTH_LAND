<?php

namespace App\Http\Controllers;

<<<<<<< HEAD
use App\Application\Banners\Queries\GetActiveBanners;
=======
>>>>>>> feature/statistical-count-views
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

<<<<<<< HEAD
        $banners = GetActiveBanners::query();

        $compactData = [
            'lastestNews' => $lastestNews,
            'hotestProjects' => $hotestProjects,
            'hotestLands' => $hotestLands,
            'banners' => $banners
=======
        $compactData = [
            'lastestNews' => $lastestNews,
            'hotestProjects' => $hotestProjects,
            'hotestLands' => $hotestLands
>>>>>>> feature/statistical-count-views
        ];

        return view('pages.landing-page.index')->with($compactData);
    }
}
