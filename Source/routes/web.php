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

Route::get('change-language/{language}', 'IntroductController@changeLanguage')
->name('user.change-language')->middleware('locale');

Route::get('/', 'LandingPageController@index')->name('landing-page')->middleware('locale');

Route::group(['prefix' => 'tin-tuc', 'name' => 'news.'],function() {
    Route::get('', 'NewsController@listPagination')->name('news.list')->middleware('locale');
    Route::get('{id}', 'NewsController@single')->name('news.single')->middleware('locale');
});

Route::group(['prefix' => 'bat-dong-san', 'name' => 'land.'], function() {
    Route::get('', 'LandsController@listPagination')->name('land.list')->middleware('locale');
    Route::get('{seoAlias}', 'LandsController@single')->name('land.single')->middleware('locale');
});

Route::group(['prefix' => 'du-an', 'name' => 'project.'], function() {
    Route::get('', 'ProjectsController@listPagination')->name('project.list')->middleware('locale');
    Route::get('{seoAlias}', 'ProjectsController@single')->name('project.single')->middleware('locale');
});

Route::group(['prefix' => 'mat-bang-can-ho', 'name' => 'and-plan.'], function() {
    Route::get('', 'LandPlanController@index')->name('land-plan.index')->middleware('locale');
});

Route::group(['prefix' => 'thu-vien-anh', 'name' => 'galleries.'], function() {
    Route::get('', 'GalleriesController@index')->name('galleries.index')->middleware('locale');
    Route::get('{room}', 'GalleriesController@roomGallery')->name('galleries.room')->middleware('locale');
});

Route::group(['prefix' => 'lien-he', 'name' => 'contact.'], function() {
    Route::get('', 'ContactController@index')->name('contact.index');
});

Route::group(['prefix' => 'gioi-thieu', 'name' => 'introduct.'], function() {
    Route::get('', 'IntroductController@index')->name('introduction.list')->middleware('locale');
    // Route::get('{seoAlias}', 'LandsController@single')->name('land.single');
});


use Spatie\Analytics\Period;

Route::get('test',function (){
    $analyticsData = Analytics::fetchVisitorsAndPageViews(Period::days(7));
    dd($analyticsData);
});