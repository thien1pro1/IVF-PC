<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CalendarMigration extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('calendars', function (Blueprint $table) {
            $table->id();
            $table->string('room_id');
            $table->integer('Shift1')->nullable();
            $table->integer('Shift2')->nullable();
            $table->integer('Shift3')->nullable();
            $table->integer('Shift4')->nullable();
            $table->integer('Shift5')->nullable();
            $table->integer('Shift6')->nullable();
            $table->integer('Shift7')->nullable();
            $table->integer('Shift8')->nullable();
            $table->integer('Shift9')->nullable();
            $table->integer('Shift10')->nullable();
            $table->integer('Shift11')->nullable();
            $table->integer('Shift12')->nullable();




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
        Schema::dropIfExists('calendars');

    }
}
