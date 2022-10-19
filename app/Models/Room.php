<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    use HasFactory;
    public $timestamp = false;
    protected $fillable = [
        'name'
    ];
    protected $primarykey = 'id';
    
}
