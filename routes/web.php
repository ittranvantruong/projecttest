<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TestDemoController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\UserController;

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



Route::get('/user', [UserController::class, 'index'])->name('user.index');

Route::group(['middleware' => 'auth', 'prefix' => '/blog', 'as' => 'blog.'], function(){
	Route::get('/', [BlogController::class, 'index'])->name('blog');
	Route::get('/show/{id}', [BlogController::class, 'show'])->name('show');
	Route::get('/edit/{id}', [BlogController::class, 'edit'])->name('edit');
	Route::get('/create', [BlogController::class, 'create'])->name('create');
	Route::post('/store', [BlogController::class, 'store'])->name('store');
	Route::put('/update', [BlogController::class, 'update'])->name('update');
	Route::delete('/delete', [BlogController::class, 'delete'])->name('delete');
});

Route::fallback(function(){
    return response()->json([
        'status' => 404,
        'message' => 'Không tìm thấy đường dẫn này'], 404);
});
