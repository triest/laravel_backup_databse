<?php

    use Illuminate\Database\Migrations\Migration;
    use Illuminate\Database\Schema\Blueprint;
    use Illuminate\Support\Facades\Schema;

    class AddForeginKeyFromTablesToDatabases extends Migration
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
                $table->foreignId('database_id')->nullable()->constrained();
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
                $table->dropForeign('database_id');
            });
        }
    }
