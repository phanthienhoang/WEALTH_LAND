<?php

namespace App\Application\News\Queries;

use App\AppNewsPost;
use App\Helpers\Strings\FileStorageMakingUrl;

class GetNewsSingleBySlug {
    public static function query(string $slug) {
        $newsSingle = AppNewsPost::where('slugVI', $slug)->orWhere('slugEN', $slug)->firstOrFail();

        $newsSingle->imgCoverUrl = FileStorageMakingUrl::transformString($newsSingle->imgCoverUrl);

        return $newsSingle;
    }
}