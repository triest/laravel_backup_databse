<?php

    use Illuminate\Database\Migrations\Migration;
    use Illuminate\Database\Schema\Blueprint;
    use Illuminate\Support\Facades\Schema;

    class AddNumRowsToTables extends Migration
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
                $table->bigInteger('num_rows')->after('name')->nullable()->default(null);
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
                $table->dropColumn('num_rows');
            });
        }
    }
