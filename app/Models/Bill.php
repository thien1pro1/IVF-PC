<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bill extends Model
{
    use HasFactory;
    public function medicines() {
        return $this->belongsToMany(Medicine::class, 'Bill_Medicines' ,'bill_id','medicine_id')->withPivot('amount');;
      }
    public function book(){
        return $this->belongsTo(Book::class, 'book_id');

    }
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
