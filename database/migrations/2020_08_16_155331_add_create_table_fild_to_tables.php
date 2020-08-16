<?php

    use Illuminate\Database\Migrations\Migration;
    use Illuminate\Database\Schema\Blueprint;
    use Illuminate\Support\Facades\Schema;

    class AddCreateTableFildToTables extends Migration
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
                $table->boolean('show_create')->after('name')->nullable()->default(1);
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
                $table->dropColumn('show_create');
            });
        }
    }
