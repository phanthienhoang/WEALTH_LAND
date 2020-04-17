<?php

namespace App\Helpers\Translaters;

use App\AppIntroduction;
use Illuminate\Support\Facades\App;

class IntroductionTranslater
{
    public static function transform(AppIntroduction $introduction)
    {
        if (App::isLocale('vi')) {
            $introduction->title = $introduction->title_vi;
            $introduction->content = $introduction->content_vi;
            $introduction->slug = $introduction->slug_vi;
        } else {
            $introduction->title = $introduction->title_en;
            $introduction->content = $introduction->content_en;
            $introduction->slug = $introduction->slug_en;
        }

        return $introduction;
    }

    public static function transformList($introductionList) {
        return collect($introductionList->map(function($elem) {
            return self::transform($elem);
        }));
    }
}
