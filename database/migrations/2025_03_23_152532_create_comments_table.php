<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('comments', function (Blueprint $table) {
            $table->integer('id')->primary()->autoIncrement();
        $table->integer('ticket_id');
        $table->integer('user_id');
        $table->text('content')->nullable();
        $table->timestamps();

        $table->foreign('ticket_id')->references('id')->on('tickets');
        $table->foreign('user_id')->references('id')->on('users');

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('comments');
    }
};
