<?php

namespace App\Http\Controllers;

use App\Application\News\Queries\GetNewsListByCategory;
use App\Application\News\Queries\GetNewsSingleBySlug;
use App\AppNewsPostCategory;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /** Web actions */
    public function filter(AppNewsPostCategory $appnewspostcategory)
    {

        $newsList = GetNewsListByCategory::query($appnewspostcategory->id);

        // dd($newsList);

        return view('pages.news.news')->with('list', $newsList);
    }
}
