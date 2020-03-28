<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNewProjectLandsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('new_project_lands', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('category_project_land_id');
          
            $table->string('title_VI');
            $table->string('title_EN')->nullable();
            $table->longText('content_VI');
            $table->longText('content_EN')->nullable();
            $table->longText('cover_image');

            $table->boolean('isHot')->default(0);
            $table->boolean('isStatus')->default(1);

            $table->unsignedBigInteger('user_id_create');
            $table->unsignedBigInteger('user_id_update');

            $table->foreign('user_id_create')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('user_id_update')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('category_project_land_id')->references('id')->on('category_project_lands')->onDelete('cascade');
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
        Schema::dropIfExists('new_project_lands');
    }
}
