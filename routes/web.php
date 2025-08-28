<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\ItemController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/students', [StudentController::class, 'index']);

Route::get('/items', [ItemController::class, 'index'])->name('items.index');
Route::get('/items/create/', [ItemController::class, 'create'])->name('items.create');
Route::post('/items', [ItemController::class, 'store'])->name('items.store');
// Route::get('/items/{id}', [ItemController::class, 'show'])->name('items.show');
Route::get('/items/{id}/edit/', [ItemController::class, 'edit'])->name('items.edit');
Route::put('/items/{id}', [ItemController::class, 'update'])->name('items.update');
Route::delete('/items/{id}', [ItemController::class, 'destroy'])->name('items.destroy');

// Route::resource('/items', ItemController::class);



