<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
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

Route::get('/', [HomeController::class, 'index']);

Route::get('/create-queue', [HomeController::class, 'createQueue']);


Route::get('/user/create', [UserController::class, 'create'])->name('user.create');

Route::get('/user', [UserController::class, 'index'])->name('user.index');


Route::get('/province', [TestDemoController::class, 'getProvince']);

Route::get('/district', [TestDemoController::class, 'getDistrict']);
Route::get('/getdb', [TestDemoController::class, 'getDB']);



Route::get('/blog', [BlogController::class, 'index'])->name('blog');
Route::get('/blog/show/{id}', [BlogController::class, 'show'])->name('blog.show');
Route::get('/blog/edit/{id}', [BlogController::class, 'edit'])->name('blog.edit');
Route::get('/blog/create', [BlogController::class, 'create'])->name('blog.create');
Route::post('/blog/store', [BlogController::class, 'store'])->name('blog.store');
Route::put('/blog/update', [BlogController::class, 'update'])->name('blog.update');
Route::delete('/blog/delete', [BlogController::class, 'delete'])->name('blog.delete');

Route::fallback(function(){
    return response()->json([
        'status' => 404,
        'message' => 'Không tìm thấy đường dẫn này'], 404);
});
