<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\AppIntroduction;
use Analytics;
class IntroductController extends Controller
{
    public function index()
    {
        return view('pages.introduction.introduction');
    }

    public function api_index(){
        $datas = AppIntroduction::all();

        // $arrayData;
        // foreach($datas as $key =>$data){
        //     $data_json = [
        //         'vietname' => [
        //             'title' => $data['title_vi'],
        //             'slug' => $data['slug_vi'],
        //             'description' => $data['description_vi'],
        //             'content' => $data['content_vi']
        //         ],
        //         'english' => [
        //             'title' => $data['title_en'],
        //             'slug' => $data['slug_en'],
        //             'description' => $data['description_en'],
        //             'content' => $data['content_en']
        //         ],
    
        //     ];

        //     $arrayData[$key] =$data_json;
        // }
       
        // dd($data_json);


        return response()->json($datas, 200);
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
