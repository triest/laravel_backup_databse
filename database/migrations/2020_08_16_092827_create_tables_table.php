<?php

    use Illuminate\Database\Migrations\Migration;
    use Illuminate\Database\Schema\Blueprint;
    use Illuminate\Support\Facades\Schema;

    class CreateTablesTable extends Migration
    {
        /**
         * Run the migrations.
         *
         * @return void
         */
        public function up()
        {
            Schema::create('tables', function (Blueprint $table) {
                $table->id();
                $table->string('name', 255);
                $table->integer('first_row')->nullable()->default(null);
                $table->integer('last_row')->nullable()->default(null);
                $table->integer('all_rows')->nullable()->default(null);
                $table->boolean('beginned')->nullable()->default(null);
                $table->boolean('completed')->nullable()->default(false);

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
            Schema::dropIfExists('tables');
        }
    }
