<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\AppIntroduction;
use Analytics;
use App\Helpers\Translaters\ItroductionTranslater;
use App;
class IntroductController extends Controller
{
    public function index()
    {
        return view('pages.introduction.introduction');
    }

    public function api_index(){

        $data = AppIntroduction::all();
        $data->map(function($data){
            return ItroductionTranslater::transform($data);
         });
        return response()->json($data, 200);
    }

    public function get_introduction_data($id){
        $project = AppIntroduction::find($id);
        if (App::isLocale('vi')) {
            $project->title = $project->title_vi;
            $project->description = $project->description_vi;
            $project->content = $project->content_vi;
            return $project;
        }else{
            $project->title = $project->title_en;
            $project->description = $project->description_en;
            $project->content = $project->content_en;
            return $project;
        }
        return response()->json($project, 200);
    }

    public function api_count_views()
    {
        $activerUser = Analytics::getAnalyticsService()->data_realtime->get('ga:'.env('ANALYTICS_VIEW_ID'), 'rt:activeVisitors')->totalsForAllResults['rt:activeVisitors'];
        return response()->json($activerUser, 200);
    }

    public function changeLanguage($language)
    {
        session(['language' => $language]);
        return redirect('/');
    }
}
