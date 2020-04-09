<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LandPlanController extends Controller
{
    public function index() {
        return view('pages.land-plan.land-plan');
    }
}
