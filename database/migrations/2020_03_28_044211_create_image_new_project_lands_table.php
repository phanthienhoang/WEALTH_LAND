<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateImageNewProjectLandsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('image_new_project_lands', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('new_project_land_id');
            $table->foreign('new_project_land_id')->references('id')->on('new_project_lands')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('image_new_project_lands');
    }
}
