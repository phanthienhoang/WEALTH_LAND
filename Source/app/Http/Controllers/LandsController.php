<?php

namespace App\Http\Controllers;

use App\Application\Lands\Queries\GetLandBySeoAlias;
use App\Application\Lands\Queries\GetLandsPagination;

class LandsController extends Controller
{
    /** Web actions */
    public function listPagination() {
        $lands = GetLandsPagination::query();

        $compactData = [
            'lands' => $lands
        ];

        return view('pages.lands.lands')->with($compactData);
    }

    public function single($seoAlias) {
        $land = GetLandBySeoAlias::query($seoAlias);

        $compactData = [
            'land' => $land
        ];

        return view('pages.lands.land-single')->with($compactData);
    }

    /** Api actions */
}
