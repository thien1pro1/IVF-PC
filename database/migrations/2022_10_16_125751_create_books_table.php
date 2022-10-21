<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBooksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('books', function (Blueprint $table) {
            $table->id();

            $table->string('wife_name');
            $table->string('hus_name');

            $table->string('phone', 10);
            $table->string('email');
            $table->date('wife_birthday');
            $table->date('hus_birthday');
            $table->date('register_date');
            $table->time('register_time');
            $table->bigInteger('room_id')->nullable();
            $table->tinyInteger('status')->default(0);
            $table->longText('message')->nullable();
            $table->text('result')->nullable();




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
        Schema::dropIfExists('books');
    }
}
