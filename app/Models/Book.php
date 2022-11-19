<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;
    public $timestamp = false;
    protected $fillable = [
        'wife_name',
        'hus_name',
        'phone',
        'email',
        'wife_birthday',
        'hus_birthday',
        'register_date',
        'register_time',
        'room',
        'message',
        'result',
        'status'
    ];
    protected $primarykey = 'id';
    protected $table = 'books';
    public function room()
    {
        return $this->belongsTo(Room::class);
    }
    public function bill()
    {
        return $this->hasOne(Bill::class);
    }
}
