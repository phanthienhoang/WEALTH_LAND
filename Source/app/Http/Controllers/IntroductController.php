<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\AppIntroduction;
use App\Application\Introductions\Queries\GetAllIntroduction;
use Spatie\Analytics\Analytics;

class IntroductController extends Controller
{
    public function index()
    {
        return view('pages.introduction.introduction');
    }

    public function api_index(){
        $result = GetAllIntroduction::query();

        return response()->json($result, 200);
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
