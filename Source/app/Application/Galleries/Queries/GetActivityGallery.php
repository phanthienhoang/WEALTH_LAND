<?php

namespace App\Application\Galleries\Queries;

use App\Helpers\Strings\FileStorageMakingUrl;
use Exception;
use Illuminate\Support\Facades\DB;

function addCreatedToObj($listString, $createdAt)
{
    try {
        $listResult = [];

        foreach ($listString as $item) {
            $listResult[] = [
                "imgCoverUrl" => $item,
                "created_at" => $createdAt
            ];
        }

        return $listResult;
    } catch (\Exception $e) {
        return [];
    }
 
}

function flatteningData($data)
{
    $result = $data->reduce(function ($total, $item) {
        // return dd($item);

        $imgUrls = $item->imgUrls ?? "[]";

        $imgList = json_decode($imgUrls);

        $imgList = addCreatedToObj($imgList, $item->created_at);

        return array_merge($total, $imgList);
    }, []);

    return collect($result);
}

class GetActivityGallery {
    public static function query() {
        $dataResult = DB::table('app_lands')->select(['imgUrls', 'created_at'])->get();

        $result = flatteningData($dataResult);

        $result = collect($result)->map(function ($elem) {
            $elem = (object) $elem;
            FileStorageMakingUrl::transformString($elem->imgCoverUrl);
            return (object) $elem;
        });

        return $result;
    }
}