<?php

use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Http\Controllers\TicketController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\ChatController;



Route::get('/', function () {
    return Inertia::render('Welcome');
})->name('home');

Route::get('dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth:sanctum'])->name('dashboard');

Route::middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::get('/tickets/create', [TicketController::class, 'create'])->name('tickets.create');
    Route::post('/tickets', [TicketController::class, 'store'])->name('tickets.store');
});
Route::get('/tickets', [TicketController::class, 'index'])->name('tickets.index');

Route::get('/attachments/{filename}', [TicketController::class, 'downloadAttachment'])->name('attachments.download');

Route::get('/tickets/{ticket}', [TicketController::class, 'show'])->name('tickets.show');

Route::get('/tickets/{ticket}/edit', [TicketController::class, 'edit'])->name('tickets.edit');

Route::put('/tickets/{ticket}', [TicketController::class, 'update'])->name('tickets.update');

Route::delete('/tickets/{ticket}', [TicketController::class, 'destroy'])->name('tickets.destroy');

Route::post('/tickets/{ticket}/comments', [CommentController::class, 'store'])->name('comments.store');

Route::get('/tickets/{ticket}/chat', [ChatController::class, 'show'])->name('chats.show');

Route::post('/tickets/{ticket}/chat/messages', [ChatController::class, 'sendMessage'])->name('chats.sendMessage');

Route::get('/attachments/{filename}', [TicketController::class, 'downloadAttachment'])->name('attachments.download');

Route::get('/tickets/{ticket}/chat', [ChatController::class, 'show'])->name('tickets.chat');

Route::middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::post('/tickets/{ticket}/chat/messages', [ChatController::class, 'sendMessage'])->name('chats.sendMessage');
});

require __DIR__ . '/settings.php';
require __DIR__ . '/auth.php';
