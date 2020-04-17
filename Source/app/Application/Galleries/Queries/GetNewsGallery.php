<?php

namespace App\Application\Galleries\Queries;

use App\Helpers\Strings\FileStorageMakingUrl;
use Illuminate\Support\Facades\DB;

class GetNewsGallery {
    public static function query() {
        $result = DB::table('app_news_posts')->select(['imgCoverUrl', 'created_at'])->get();

        $result->map(function($elem) {
            $elem->imgCoverUrl = FileStorageMakingUrl::transformString($elem->imgCoverUrl);
        });

        return $result;
    }
}