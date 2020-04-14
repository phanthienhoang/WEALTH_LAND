<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AppNewsPostCategory extends Model
{
    /**
     * Get the route key for the model.
     *
     * @return string
     */
    public function getRouteKeyName()
    {
        return 'title_vi';
    }
}
