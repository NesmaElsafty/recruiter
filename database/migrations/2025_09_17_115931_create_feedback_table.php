<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
 
    public function up(): void
    {
        Schema::create('feedback', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->nullable()->constrained('users');
            $table->string('comment')->nullable();
            $table->string('rating')->nullable();
            $table->string('rating_type')->nullable();
            $table->boolean('is_active')->default(true);
            $table->timestamps();
        });
    }

  
    public function down(): void
    {
        Schema::dropIfExists('feedback');
    }
};
