<?php

    namespace App;

    use Illuminate\Database\Eloquent\Model;

    class Database extends Model
    {
        //
        protected $table = "databases";

        public function tables()
        {
            return $this->hasMany(Table::class);
        }
    }
