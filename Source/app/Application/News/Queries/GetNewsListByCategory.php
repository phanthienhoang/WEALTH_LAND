<?php

namespace App\Application\News\Queries;

use App\AppNewsPost;
use App\Helpers\Strings\FileStorageMakingUrl;
use App\Helpers\Translaters\NewsTranslater;

class GetNewsListByCategory
{
    public static function query($id)
    {
        // $length = $args['length'] ?? 10;

        $newsList = AppNewsPost::where('news_post_category_id', '=', $id)->get();
        $newsList->map(function ($news) {
            $news = NewsTranslater::transform($news);

            $news->imgCoverUrl = FileStorageMakingUrl::transformString($news->imgCoverUrl);

            return $news;
        });

        return $newsList;
    }
}
