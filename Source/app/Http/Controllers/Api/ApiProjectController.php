<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\AppProjectLand;
use App\Helpers\Strings\FileStorageMakingUrl;

class ApiProjectController extends Controller
{

    public function IndexAll(){

        $indexAll= AppProjectLand::all();

        $indexAll->map(function($indexAll) {
            $indexAll->imgCoverUrl = FileStorageMakingUrl::transformString($indexAll->imgCoverUrl);
            $indexAll->imgUrls = FileStorageMakingUrl::transformListString($indexAll->imgUrls);

            // return ProjectTranslater::transform($project);
        });
        return response()->json($indexAll, 200);    
    }


    public function indexApartment(){

        $indexAll= AppProjectLand::where('category_project_land_id', 1)->get();

        $indexAll->map(function($indexAll) {
            $indexAll->imgCoverUrl = FileStorageMakingUrl::transformString($indexAll->imgCoverUrl);
            $indexAll->imgUrls = FileStorageMakingUrl::transformListString($indexAll->imgUrls);

        });
        return response()->json($indexAll, 200);    
    }

    public function indexLand(){

        $indexAll= AppProjectLand::where('category_project_land_id', 2)->get();

        $indexAll->map(function($indexAll) {
            $indexAll->imgCoverUrl = FileStorageMakingUrl::transformString($indexAll->imgCoverUrl);
            $indexAll->imgUrls = FileStorageMakingUrl::transformListString($indexAll->imgUrls);

        });
        return response()->json($indexAll, 200);    
    }

    public function indexBDS(){

        $indexAll= AppProjectLand::where('category_project_land_id', 3)->get();

        $indexAll->map(function($indexAll) {
            $indexAll->imgCoverUrl = FileStorageMakingUrl::transformString($indexAll->imgCoverUrl);
            $indexAll->imgUrls = FileStorageMakingUrl::transformListString($indexAll->imgUrls);

        });
        return response()->json($indexAll, 200);    
    }

    public function indexVilla(){

        $indexAll= AppProjectLand::where('category_project_land_id', 4)->get();

        $indexAll->map(function($indexAll) {
            $indexAll->imgCoverUrl = FileStorageMakingUrl::transformString($indexAll->imgCoverUrl);
            $indexAll->imgUrls = FileStorageMakingUrl::transformListString($indexAll->imgUrls);

        });
        return response()->json($indexAll, 200);    
    }

    public function Officetel(){

        $indexAll= AppProjectLand::where('category_project_land_id', 5)->get();

        $indexAll->map(function($indexAll) {
            $indexAll->imgCoverUrl = FileStorageMakingUrl::transformString($indexAll->imgCoverUrl);
            $indexAll->imgUrls = FileStorageMakingUrl::transformListString($indexAll->imgUrls);

        });
        return response()->json($indexAll, 200);    
    }

}
