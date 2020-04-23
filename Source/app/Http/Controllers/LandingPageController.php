<?php

namespace App\Http\Controllers;

use App\Application\Banners\Queries\GetActiveBanners;
use App\Application\Lands\Queries\GetHotestLands;
use App\Application\Lands\Queries\GetLandBySearchParams;
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
            'length' => 3
        ]);

        // dd($hotestProjects);
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

    public function search(Request $request) 
    {
        $result = GetLandBySearchParams::query($request->all());

        // dd($result);

        return view('pages.lands.land-search', compact('result'));
    }
}
