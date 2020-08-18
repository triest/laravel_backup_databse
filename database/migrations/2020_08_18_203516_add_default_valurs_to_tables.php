<?php

    use Illuminate\Database\Migrations\Migration;
    use Illuminate\Database\Schema\Blueprint;
    use Illuminate\Support\Facades\Schema;

    class AddDefaultValursToTables extends Migration
    {
        /**
         * Run the migrations.
         *
         * @return void
         */
        public function up()
        {
            Schema::table('tables', function (Blueprint $table) {
                //
                $table->integer('last_row')->nullable()->default(0)->change();
                $table->integer('all_rows')->nullable()->default(0)->change();
            });
        }

        /**
         * Reverse the migrations.
         *
         * @return void
         */
        public function down()
        {
            Schema::table('tables', function (Blueprint $table) {
                //
            });
        }
    }
