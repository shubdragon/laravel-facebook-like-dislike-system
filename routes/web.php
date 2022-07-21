<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\PostController;

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
})->name('home');

Route::post('/signup', [UserController::class, 'postSignUp'])->name('signup');

Route::post('/signin', [UserController::class, 'postSignIn'])->name('signin');

Route::get('/logout', [UserController::class, 'getLogout'])->name('logout');

Route::get('/account', [UserController::class, 'getAccount'])->name('account');

Route::post('/upateaccount', [UserController::class, 'postSaveAccount'])->name('account.save');

Route::get('/userimage/{filename}', [UserController::class, 'getUserImage'])->name('account.image');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', [PostController::class, 'getDashboard'])->name('dashboard');

Route::middleware(['auth:sanctum', 'verified'])->post('/createpost', [PostController::class, 'postCreatePost'])->name('post.create');

Route::middleware(['auth:sanctum', 'verified'])->get('/delete-post/{post_id}', [PostController::class, 'getDeletePost'])->name('post.delete');

Route::post('/edit', [PostController::class, 'postEditPost'])->name('edit');

Route::post('/like', [PostController::class, 'postLikePost'])->name('like');




