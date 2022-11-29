<?php

use App\Http\Controllers\AdminFeedBackController;
use App\Http\Controllers\AnswerController;
use App\Http\Controllers\AskController;
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

use App\Http\Controllers\BillController;
use App\Http\Controllers\FeedBackController;
use App\Http\Controllers\RoomController;
use Illuminate\Support\Facades\Auth;
use App\Mail\ConfirmEmail;
use App\Models\Position;

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
Route::get('admin/bill/{id}',[BillController::class, 'index'])->name('bill');
Route::get('admin/edit-bill/{id}',[BillController::class, 'edit'])->name('editBill');



Route::get('/', function () {
    return view('welcome');
});
Route::get('admin/searchBook',[BookController::class, 'searchBook'])->name('searchBook');

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
Route::get('/admin/profile',function(){
    $position = Position::all();
    return view('admin.profile')->with(compact('position'));
})->name('profile');

Route::get('/comeback-book',[BookController::class,'comeback'])->name('comebackBook');
Route::get('/comeback-bookstaff',[BookStaffController::class,'comeback'])->name('comebackBookStaff');
Route::get('/comeback-staff',[StaffController::class,'comeback'])->name('comebackStaff');
Route::get('/comeback-medicine',[MedicineController::class,'comeback'])->name('comebackMedicine');
Route::get('/comeback-categogy',[CategogyController::class,'comeback'])->name('comebackCategogy');
Route::get('/comeback-post',[PostController::class,'comeback'])->name('comebackBook');
Route::get('/comeback-service',[ServiceController::class,'comeback'])->name('comebackService');
Route::get('/comeback-position',[PositionController::class,'comeback'])->name('comebackPosition');






Route::get('admin/bookStaff/billPDF/{id}',[BillController::class, 'viewBillPDF'])->name('viewBillPDF');

Route::get('client/send-history/',[BookController::class, 'sendHistory'])->name('sendHistory');

Route::get('pdf/{id}',[BookStaffController::class, 'viewBookPDF'])->name('viewBookPDF');
Route::get('/client/home', [PageController::class,'home'])->name('page.home');
Route::get('/client/category/{id}',[PageController::class,'categoryPage'])->name('page.category');
Route::get('/client/post/{id}',[PageController::class,'postPage'])->name('page.post');
Route::post('admin/add-bill/',[BillController::class, 'addBill'])->name('addBill');
Route::post('admin/save-bill/',[BillController::class, 'saveBill'])->name('saveBill');


Route::get('/client/search', [PageController::class,'timkiem'])->name('page.search');

Route::get('/client/service', [PageController::class,'servicePage'])->name('page.service');



Route::get('/error',function(){
    return view('layouts.error');
});
Route::get('/client/about',function(){
    return view('client.about');
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
Route::resource('client/post/feedback',FeedBackController::class);
Route::resource('admin/admin-feedback',AdminFeedBackController::class);


Route::resource('admin/admin',UserController::class);
Route::resource('admin/service',ServiceController::class);
Route::resource('client/ask',AskController::class);
Route::resource('admin/ask_answer',AnswerController::class);

Route::resource('admin/client',BookController::class);
Route::resource('admin/bookStaff',BookStaffController::class);
Route::resource('admin/medicine',MedicineController::class);

Route::resource('admin/position',PositionController::class);
Route::get('send-confirmEmail/{id}', [BookController::class, 'confirmEmail'])->name('book.confirmEmail');
Route::get('send-barcodeEmail/{id}', [BookController::class, 'barcodeEmail'])->name('book.barcodeEmail');;


Route::resource('admin/room',RoomController::class);

Route::put('/admin/client/edit/cancel/{id}', [App\Http\Controllers\BookController::class, 'cancel'])->name('book.cancel');
Route::get('/client/history', [BookController::class, 'history'])->name('book.history');

Route::get('/admin/book-Staff/history/check', [BookStaffController::class, 'history'])->name('bookStaff.history');
Route::get('/admin/book-Staff/detailHistory', [BookStaffController::class, 'detailHistory'])->name('bookStaff.detailHistory');

Route::get('/book/confirm', [BookController::class, 'confirm'])->name('book.confirm');

Route::get('/client/detailHistory', [BookController::class, 'detailHistory'])->name('book.detailHistory');



Route::get('/admin/dashboard', [App\Http\Controllers\HomeController::class, 'index'])->name('admin.dashboard');

// Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');