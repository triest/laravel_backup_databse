<?php

    use App\Http\Controllers\DatabaseController;
    use Illuminate\Support\Facades\Route;

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

Route::get('/backup', [DatabaseController::class, 'index']);

Route::get('/input-data',[DatabaseController::class,'input'])->name('input-data');
Route::post('/input-data',[DatabaseController::class,'store'])->name('store');
