<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $table = "contact";
    protected $fillable = ["name", "email", "title", "phone", "desc", "created_at", "updated_at"];
    protected $primarykey = "id";
}
