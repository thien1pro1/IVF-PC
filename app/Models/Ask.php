<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ask extends Model
{
    protected $fillable = [
        'name',
        'email',
        'phone',
        'status'
    ];
    use HasFactory;
    protected $table = 'asks';

}
