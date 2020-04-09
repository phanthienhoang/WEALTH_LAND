<?php

namespace App\Application\News\Queries;

use App\AppNewsPost;
use App\Helpers\Strings\FileStorageMakingUrl;
use App\Helpers\Translaters\NewsTranslater;

class GetLastNewsList
{
    public static function query($args = [])
    {
        $length = $args['length'] ?? 10;

        $newsList = AppNewsPost::orderBy('updated_at', 'desc')->get();
        $newsList->map(function ($news) { 
            $news = NewsTranslater::transform($news);
            
            $news->imgCoverUrl = FileStorageMakingUrl::transformString($news->imgCoverUrl);

            return $news;
        });

        return $newsList;
    }
}
