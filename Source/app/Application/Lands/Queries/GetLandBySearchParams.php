<?php

namespace App\Application\Lands\Queries;

use Illuminate\Support\Facades\DB;

class GetLandBySearchParams {
    static $pricearray = [
        '1' => [0, 1.5],
        '2' => [1.5, 2.5],
        '3' => [2.5, 4],
        '4' => [4, 7],
        '5' => [7, 100]
    ];

    static $area = [
        '1' => [0, 85],
        '2' => [85, 135],
        '3' => [135, 200],
        '4' => [200, 320],
        '5' => [320, 10000]
    ];

    static $bedroom = [
        '1' => [1, 2],
        '2' => [3, 4],
        '3' => [4, 40]
    ];

    static $bathroom = [
        '1' => [1, 1.5],
        '2' => [2, 3.5],
        '3' => [3.5, 10]
    ];

    public static function query($params = []) {
        
        // dd($params);
        $keyword = $params['keyword'];

        $result = DB::table('app_lands')->where('titleVI', 'LIKE', "%$keyword%")
        ->whereBetween('iPrice', self::$pricearray[$params['price']])
        ->whereBetween('iArea', self::$area[$params['area']])
        ->whereBetween('iBedroom', self::$bedroom[$params['bedroom']])
        ->whereBetween('iBathroom', self::$bathroom[$params['bathroom']])
        ->get();
        
        return $result;
    }
}