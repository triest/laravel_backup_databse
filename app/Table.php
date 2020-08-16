<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Table extends Model
{
    //

    /**
     * Get the post that owns the comment.
     */
    public function database()
    {
        return $this->belongsTo(Database::class);
    }
}
