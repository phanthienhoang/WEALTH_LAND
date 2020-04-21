<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\AppProjectLand;
use App\AppCategoryProjectLand;
use App\AppPartner;
use App;

use App\Helpers\Translaters\PartnerTranslater;
use App\Helpers\Translaters\ProjectTranslater;
use App\Helpers\Translaters\CategoryTranslater;

use App\Helpers\Strings\FileStorageMakingUrl;

class ApiProjectController extends Controller
{

    public function indexCategoryPro()
    {
        $indexCategoryPro = AppCategoryProjectLand::all();

        $indexCategoryPro->map(function($indexCategoryPro){
           return CategoryTranslater::transform($indexCategoryPro);
        });
       
        return response()->json($indexCategoryPro,200);
    }

    public function getProduct($id){
        if($id == 0) {
            $indexAll= AppProjectLand::orderBy('updated_at', 'desc')->take(6)->get();
            $indexAll->map(function($indexAll) {
                $indexAll->imgCoverUrl = FileStorageMakingUrl::transformString($indexAll->imgCoverUrl);
                $indexAll->imgUrls = FileStorageMakingUrl::transformListString($indexAll->imgUrls);
                return ProjectTranslater::transform($indexAll);
            });
        }else{

            $indexAll= AppProjectLand::where('category_project_land_id', $id)->get();
            $indexAll->map(function($indexAll) {
                $indexAll->imgCoverUrl = FileStorageMakingUrl::transformString($indexAll->imgCoverUrl);
                $indexAll->imgUrls = FileStorageMakingUrl::transformListString($indexAll->imgUrls);
                return ProjectTranslater::transform($indexAll);
            });

        }
       
        return response()->json($indexAll, 200);    
    }

    public function indexAll(){

        $indexAll= AppProjectLand::orderBy('updated_at', 'desc')->take(6)->get();

        $indexAll->map(function($indexAll) {
            $indexAll->imgCoverUrl = FileStorageMakingUrl::transformString($indexAll->imgCoverUrl);
            $indexAll->imgUrls = FileStorageMakingUrl::transformListString($indexAll->imgUrls);

            return ProjectTranslater::transform($indexAll);
        });

        return response()->json($indexAll, 200);

    }


    // ===========================================

    public function partner_getdata($id){
        
        $partner = AppPartner::find($id);
        if (App::isLocale('vi')) {
            $partner->title = $partner->title_vi;
            $partner->description = $partner->description_vi;
            $partner->content = $partner->content_vi;
            // dd($partner);
            return view('pages.partner.index',compact('partner'));
        }else{
            $partner->title = $partner->title_en;
            $partner->description = $partner->description_en;
            $partner->content = $partner->content_en;
            return view('pages.partner.index',compact('partner'));
        }

    }

}
