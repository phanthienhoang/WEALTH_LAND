<?php

namespace App\Application\Introductions\Queries;

use App\AppIntroduction;
use App\Helpers\Translaters\IntroductionTranslater;

class GetAllIntroduction {
    public static function query() {
        $data = AppIntroduction::all();

        $data = IntroductionTranslater::transformList($data);

        return $data;
    }
}