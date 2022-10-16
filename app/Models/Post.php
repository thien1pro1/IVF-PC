<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    public $timestamp = false;
    protected $fillable = [
        'title',
        'short_Desc',
        'content',
        'image',
        'categogy_id',
        'views',
        'name'
    ];
    protected $primarykey = 'id';
    protected $table = 'categogy';
    // public function categogy(){
    //     return $this->belongsTo('App\Models\Categogy','categogy_id');
    // }
}
