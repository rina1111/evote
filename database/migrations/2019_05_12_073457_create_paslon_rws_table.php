<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePaslonRwsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('paslon_rws', function (Blueprint $table) {
            $table->bigIncrements('id');
              $table->string('no_paslon');
              $table->string('nm_rw');
              $table->string('rw');
              $table->string('pekerjaan');
                $table->string('agama');
                  $table->string('umur');
                    $table->string('foto');


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
        Schema::dropIfExists('paslon_rws');
    }
}
