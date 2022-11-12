<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Room extends Model
{
    use HasFactory;
    public $timestamp = false;
    protected $fillable = [
        'name',
        'user_id'
    ];
    protected $primarykey = 'id';

    public function books()
    {
        return $this->hasMany(Book::class);
    }
    
}
