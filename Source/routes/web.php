<?php

use Illuminate\Support\Facades\Route;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/', 'LandingPageController@index')->name('landing-page');

Route::group(['prefix' => 'tin-tuc', 'name' => 'news.'],function() {
    Route::get('', 'NewsController@listPagination')->name('news.list');
    Route::get('{id}', 'NewsController@single')->name('news.single');
});

Route::group(['prefix' => 'bat-dong-san', 'name' => 'land.'], function() {
    Route::get('', 'LandsController@listPagination')->name('land.list');
    Route::get('{seoAlias}', 'LandsController@single')->name('land.single');
});

Route::group(['prefix' => 'du-an', 'name' => 'project.'], function() {
    Route::get('', 'ProjectsController@listPagination')->name('project.list');
    Route::get('{seoAlias}', 'ProjectsController@single')->name('project.single');
});

Route::group(['prefix' => 'mat-bang-can-ho', 'name' => 'and-plan.'], function() {
    Route::get('', 'LandPlanController@index')->name('land-plan.index');
});

Route::group(['prefix' => 'thu-vien-anh', 'name' => 'galleries.'], function() {
    Route::get('', 'GalleriesController@index')->name('galleries.index');
    Route::get('{room}', 'GalleriesController@roomGallery')->name('galleries.room');
});

Route::group(['prefix' => 'lien-he', 'name' => 'contact.'], function() {
    Route::get('', 'ContactController@index')->name('contact.index');
});

Route::group(['prefix' => 'gioi-thieu', 'name' => 'introduct.'], function() {
    Route::get('', 'IntroductController@index')->name('introduction.list');
    // Route::get('{seoAlias}', 'LandsController@single')->name('land.single');
});

Route::group(['prefix' => 'search', 'name' => 'search.'],function() {
    Route::post('', 'LandingPageController@search')->name('search.land');
});

use Spatie\Analytics\Period;

Route::get('test',function (){
    $analyticsData = Analytics::fetchVisitorsAndPageViews(Period::days(7));
    dd($analyticsData);
});