<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDptsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dpts', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nik');
            $table->string('nama_dpt');
            $table->string('alamat_dpt');
            $table->string('jns_kelamin');
            $table->string ('agama_dpt');
            $table->unsignedBigInteger('rwid');
            $table->foreign('rwid')->references('id')->on('data_rws')->onDelete('cascade');
            $table->unsignedBigInteger('rtid');
            $table->foreign('rtid')->references('id')->on('data_rts')->onDelete('cascade');
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
        Schema::dropIfExists('dpts');
    }
}
