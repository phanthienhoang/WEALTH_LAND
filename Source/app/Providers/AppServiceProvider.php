<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
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
    }
}
