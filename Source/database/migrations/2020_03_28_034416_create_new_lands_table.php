<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNewLandsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('new_lands', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('category_land_id');

            $table->string('title_VI')->unique();

            $table->string('title_EN')->nullable()->unique();
            $table->longText('content_VI');
            $table->longText('content_EN')->nullable();

            $table->boolean('isHost')->default(0);

            $table->unsignedBigInteger('user_id_create');
            $table->unsignedBigInteger('user_id_update');

            $table->foreign('user_id_create')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('user_id_update')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('category_land_id')->references('id')->on('category_lands')->onDelete('cascade');
            
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
        Schema::dropIfExists('new_lands');
    }
}
