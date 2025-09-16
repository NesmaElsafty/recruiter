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
        //
        Schema::table('users', function (Blueprint $table) {
            $table->string('company_name')->nullable();
            $table->string('job_title')->nullable();
            $table->foreignId('city_id')->nullable()->constrained('cities');
            $table->foreignId('major_id')->nullable()->constrained('majors');
            $table->enum('type', ['candidate', 'recruiter', 'admin'])->nullable();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('company_name');
            $table->dropColumn('job_title');
            $table->dropColumn('city_id');
            $table->dropColumn('major_id');
            $table->dropColumn('type');
            $table->dropColumn('deleted_at');
            $table->dropSoftDeletes();
        });
    }
};
