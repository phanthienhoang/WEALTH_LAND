<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'contact'], function () {
    Route::post('', 'ContactController@postComment');
});

Route::group(['prefix' => 'gioi-thieu', 'name' => 'introduct.'], function() {
    Route::get('', 'IntroductController@api_index')->name('introduction.list.api');
    Route::get('/views', 'IntroductController@api_count_views')->name('introduction.countviews.api');

    // Route::get('{seoAlias}', 'LandsController@single')->name('land.single');
});

// Route::get('indexApartment','Api\ApiProjectController@indexApartment')->name('project.api.call.indexApartment');
// Route::get('indexLand','Api\ApiProjectController@indexLand')->name('project.api.call.indexLand');
// Route::get('indexBDS','Api\ApiProjectController@indexBDS')->name('project.api.call.indexBDS');
// Route::get('indexVilla','Api\ApiProjectController@indexVilla')->name('project.api.call.indexVilla');
// Route::get('officetel','Api\ApiProjectController@Officetel')->name('project.api.call.Officetel');





