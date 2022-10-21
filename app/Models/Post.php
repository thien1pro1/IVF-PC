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
        'categogy_id'
       
    ];
    protected $primarykey = 'id';
    protected $table = 'posts';
   
    public function category(){
        return $this->belongsTo('App\Models\Categogy','categogy_id');
    }
}
