<?php

namespace App\Http\Controllers;

use App\Application\News\Queries\GetLastNewsList;
use App\Application\News\Queries\GetNewsSingleBySlug;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    /** Web actions */
    public function listPagination()
    {
        $newsList = GetLastNewsList::query();

        return view('pages.news.news')->with('list', $newsList);
    }

    public function single(string $slug)
    {
        $newsData = GetNewsSingleBySlug::query($slug);
        $newsData->title = $newsData->titleVI;
        $newsData->content = $newsData->contentVI;

        $latestNewsList = GetLastNewsList::query();

        $compactData = [
            'data' => $newsData,
            'latest' => $latestNewsList
        ];

        return view('pages.news.news-single')->with($compactData);
    }
}
