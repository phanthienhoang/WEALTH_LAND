<?php

namespace App\Helpers\Translaters;

use App\AppNewsPost;

class NewsTranslater {
    public static function transform(AppNewsPost $news) {
        $news->title = $news->titleVI;
        $news->content = $news->contentVI;
        $news->slug = $news->slugVI;

        return $news;
    }
}