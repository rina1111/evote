<?php

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
Auth::routes();
Route::get('/', function () {
    return view('welcome');
});
Route::get('admin/index', 'Admin@adminindex');
Route::get('admin/datart', 'Admin@index');
Route::post('/create/datart','Admin@store');
Route::get('/delete/{id}/rt', 'Admin@delete_rt');
Route::get('/admin/{id}/editrt', 'Admin@edit');
Route::post('/update/{id}/datart','Admin@update_rt');
Route::get('admin/kandidat', 'Admin@kandidat');
Route::post('/create/kandidatrt','Admin@create_paslon_rt');
Route::post('/create/kandidatrw','Admin@create_paslon_rw');
Route::get('/home', 'HomeController@index')->name('home');
