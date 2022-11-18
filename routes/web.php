<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Mail;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\CategogyController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\BookStaffController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\StaffController;
use App\Http\Controllers\PositionController;
use App\Http\Controllers\MedicineController;


use App\Http\Controllers\RoomController;
use Illuminate\Support\Facades\Auth;
use App\Mail\ConfirmEmail;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
Route::get('/welcome', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
// Route::get('/admin/login',function(){
//     return view('admin.login');
// });
// Route::get('/admin/dashboard',function(){
//     return view('admin.dashboard');
// });
// Route::get('/admin/management_post',function(){
//     return view('admin.management_post');
// });
// Route::get('/admin/management_customer',function(){
//     return view('admin.management_customer');
// });
// Route::get('/admin/management_staff',function(){
//     return view('admin.management_staff');
// });




Route::get('pdf',[BookStaffController::class, 'viewBookPDF'])->name('viewBookPDF');
Route::get('/client/home',function(){
    return view('client.home');
});
Route::get('/client/category/{id}',[PageController::class,'categoryPage'])->name('page.category');
Route::get('/client/post/{id}',[PageController::class,'postPage'])->name('page.post');


Route::get('/error',function(){
    return view('layouts.error');
});
Route::get('/client/about',function(){
    return view('client.about');
});
Route::get('/client/service',function(){
    return view('client.service');
});
Route::get('/client/contact',function(){
    return view('client.contact');
});
Route::resource('client/book',BookController::class);
// Route::resource('/admin/category',CategogyController::class, [
//     'as' => 'admin'
// ]);
Route::resource('admin/categogy',CategogyController::class);
Route::resource('admin/post',PostController::class);

Route::resource('admin/staff',StaffController::class);
Route::resource('admin/admin',UserController::class);
Route::resource('admin/service',ServiceController::class);
Route::resource('admin/client',BookController::class);
Route::resource('admin/bookStaff',BookStaffController::class);
Route::resource('admin/medicine',MedicineController::class);

Route::resource('admin/position',PositionController::class);
Route::get('send-confirmEmail/{id}', [BookController::class, 'confirmEmail'])->name('book.confirmEmail');
Route::get('send-barcodeEmail/{id}', [BookController::class, 'barcodeEmail'])->name('book.barcodeEmail');;


Route::resource('admin/room',RoomController::class);

Route::put('/admin/client/edit/cancel/{id}', [App\Http\Controllers\BookController::class, 'cancel'])->name('book.cancel');
Route::get('/client/history', [BookController::class, 'history'])->name('book.history');
Route::get('/book/confirm', [BookController::class, 'confirm'])->name('book.confirm');

Route::get('/client/detailHistory', [BookController::class, 'detailHistory'])->name('book.detailHistory');



Route::get('/admin/dashboard', [App\Http\Controllers\HomeController::class, 'index'])->name('admin.dashboard');

// Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');