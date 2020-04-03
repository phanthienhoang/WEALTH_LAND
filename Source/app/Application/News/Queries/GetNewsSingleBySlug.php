<?php

namespace App\Application\News\Queries;

use App\AppNewsPost;

class GetNewsSingleBySlug {
    public static function query(string $slug) {
        $newsSingle = AppNewsPost::where('slugVI', $slug)->orWhere('slugEN', $slug)->firstOrFail();

        return $newsSingle;
    }
}