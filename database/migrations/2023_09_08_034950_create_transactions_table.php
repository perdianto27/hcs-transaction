<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class CreateTransactionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();
            $table->string('merchant_id', 2);
            $table->string('outlet_id', 2);
            $table->string('staff_id', 2);
            $table->double('pay_amount', 8, 2);
            $table->double('change_amount', 8, 2);
            $table->string('payment_type', 1);
            $table->double('tax', 8, 2);
            $table->string('customer_id', 2);
            $table->double('total_amount', 8, 2);
            $table->string('payment_status', 1);
            $table->timestamp('created_at')->nullable()->default(\DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('updated_at')->nullable()->default(\DB::raw('CURRENT_TIMESTAMP'));
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('transaction');
    }
}
