<?php

namespace App\Providers;

use App\AppCategoryProjectLand;
use App\AppNewsPostCategory;
use App\AppPartner;
use App\Helpers\Translaters\PartnerTranslater;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;

// use Analytics;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // view()->composer('partials.footer', function ($view) {
        //     $activerUser = Analytics::getAnalyticsService()->data_realtime->get('ga:'.env('ANALYTICS_VIEW_ID'), 'rt:activeVisitors')->totalsForAllResults['rt:activeVisitors'];
        //     $view->with(compact(['views','activerUser']));
        // });

        view()->composer('partials.header', function ($view) {
            $categories = AppNewsPostCategory::all();
            $category_projects = AppCategoryProjectLand::all();
            $partner = AppPartner::all()->map(function($partner) {
                return PartnerTranslater::transform($partner);
            });
            $view->with(compact('categories', 'category_projects','partner'));
        });
    }
}
