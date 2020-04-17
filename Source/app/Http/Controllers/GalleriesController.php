<?php

namespace App\Http\Controllers;

use App\Application\Galleries\Queries\GetActivityGallery;
use App\Application\Galleries\Queries\GetNewsGallery;
use App\Application\Galleries\Queries\GetProjectGallery;

class GalleriesController extends Controller
{
    //

    public function index() {
        return view('pages.galleries.galleries');
    }

    public function roomGallery() {
        return view('pages.galleries.room');
    }

    public function getNewsGallery() {
        $result = GetNewsGallery::query();

        $compactData = [
            'gallery' => $result,
            'title' => 'Tin tức'
        ];
        

        return view('pages.galleries.news-gallery')->with($compactData);
    }

    public function getProjectGallery()
    {
        $result = GetProjectGallery::query();

        $compactData = [
            'gallery' => collect($result),
            'title' => 'Dự án'
        ];

        return view('pages.galleries.news-gallery')->with($compactData);
    }

    public function getActivityGallery()
    {
        $result = GetActivityGallery::query();

        $compactData = [
            'gallery' => collect($result),
            'title' => 'Hoạt động'
        ];

        return view('pages.galleries.news-gallery')->with($compactData);
    }
}
