<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class AppCategoryProjectLand extends Model
{
    /**
     * Get the route key for the model.
     *
     * @return string
     */
    public function getRouteKeyName()
    {
        return 'category_project_land_name_vi';
    }
}
