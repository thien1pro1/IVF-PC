<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categogy extends Model
{
    use HasFactory;
    public $timestamp = false;
    protected $fillable = [
        'categogyName',
        'short_Desc',
        'status'
    ];
    protected $primarykey = 'id';
    protected $table = 'categogy';
    
}
