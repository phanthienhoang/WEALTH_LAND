<?php

namespace App\Application\Banners\Queries;

use App\AppBanner;
use App\AppLand;
use App\AppProjectLand;
use App\Helpers\Strings\FileStorageMakingUrl;
use App\Helpers\Translaters\LandTranslater;
use App\Helpers\Translaters\ProjectTranslater;

class GetActiveBanners {
    private function __constructor() {

    }

    public static function query($args = []) {

        $banners = AppBanner::where('isActive', 1)->orderBy('orderIndex', 'asc')->get();

        $banners = $banners->map(function($banner) {
            /** Kiểm tra Banner có liên quan tới Dự án hoặc BĐS hay không, nếu có thì xử lý dử liệu trả về Banner phù hợp */

            if(isset($banner->project_land_id)) {
                return self::convertFromProjectLand($banner);
            }

            if(isset($banner->land_id)) {
                return self::convertFromLand($banner);
            }

            $banner->imgCoverUrl = FileStorageMakingUrl::transformString($banner->imgCoverUrl);

            return $banner;

        });

        return $banners;
    }

    private static function convertFromProjectLand(AppBanner $banner) {
        $project = AppProjectLand::find($banner->project_land_id);

        if(isset($project)) {
            $project = ProjectTranslater::transform($project);

            $banner->bannerTitle = $project->title;
            $banner->bannerSubtitle = $project->address;
            $banner->imgCoverUrl = $project->imgCoverUrl;
            $banner->bannerHref = route('project.single', $project->seoAlias);
            $banner->bannerButtonTitle = "Xem Dự Án";

            return $banner;
        }

        return $banner;

    }

    private static function convertFromLand(AppBanner $banner) {
        $land = AppLand::find($banner->land_id);

        if(isset($land)) {
            $land = LandTranslater::transform($land);

            $banner->bannerTitle = $land->title;
            $banner->bannerSubtitle = $land->iAddress;
            $banner->imgCoverUrl = $land->imgCoverUrl;
            $banner->bannerHref = route('land.single', $land->seoAlias);
            $banner->bannerButtonTitle = "Xem Căn hộ";
            $banner->price = $land->iPrice;
            return $banner;
        }

        return $banner;
    }
}