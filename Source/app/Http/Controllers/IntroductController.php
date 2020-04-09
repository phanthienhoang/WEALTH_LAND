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
        $data = AppIntroduction::all();
        return response()->json($data, 200);
    }

    public function api_count_views()
    {
        $activerUser = Analytics::getAnalyticsService()->data_realtime->get('ga:'.env('ANALYTICS_VIEW_ID'), 'rt:activeVisitors')->totalsForAllResults['rt:activeVisitors'];
        return response()->json($activerUser, 200);
    }

}
