<?php

namespace App\Helpers\Translaters;

use App\AppNewsPost;
use App;

class NewsTranslater {
    public static function transform(AppNewsPost $news) {
        if (App::isLocale('vi')) {
            $news->title = $news->titleVI;
            $news->content = $news->contentVI;
            $news->slug = $news->slugVI;
        } else {
            $news->title = $news->titleEN;
            $news->content = $news->contentEN;
            $news->slug = $news->slugEN;
        }

        return $news;
    }
}