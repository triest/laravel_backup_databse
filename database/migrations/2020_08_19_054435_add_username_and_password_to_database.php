<?php

    use Illuminate\Database\Migrations\Migration;
    use Illuminate\Database\Schema\Blueprint;
    use Illuminate\Support\Facades\Schema;

    class AddUsernameAndPasswordToDatabase extends Migration
    {
        /**
         * Run the migrations.
         *
         * @return void
         */
        public function up()
        {
            Schema::table('databases', function (Blueprint $table) {
                //
                $table->string('host', 255);
                $table->string('user', 255);
                $table->string('password', 255)->nullable()->default('');
            });
        }

        /**
         * Reverse the migrations.
         *
         * @return void
         */
        public function down()
        {
            Schema::table('database', function (Blueprint $table) {
                //
            });
        }
    }
