<?php

namespace App\Application\Galleries\Queries;

use App\Helpers\Strings\FileStorageMakingUrl;
use Illuminate\Support\Facades\DB;

function addCreatedToObj($listString, $createdAt)
{
    $listResult = [];

    foreach ($listString as $item) {
        $listResult[] = [
            "imgCoverUrl" => $item,
            "created_at" => $createdAt
        ];
    }

    return $listResult;
}

function flatteningData($data) {
    $result = $data->reduce(function($total, $item) {
        // return dd($item);

        $imgUrls = $item->imgUrls ?? "[]";

        $imgList = json_decode($imgUrls);

        $imgList = addCreatedToObj($imgList, $item->created_at);

        return array_merge($total, $imgList);
    }, []);

    return collect($result);
}

class GetProjectGallery {
    public static function query()
    {
        $dataResult = DB::table('app_project_lands')->select(['imgUrls', 'created_at'])->get();

        $result = flatteningData($dataResult);

        $result = collect($result)->map(function ($elem) {
            $elem = (object)$elem;
            $elem->imgCoverUrl = FileStorageMakingUrl::transformString($elem->imgCoverUrl);
            return (object)$elem;
        });

        return $result;
    }
}