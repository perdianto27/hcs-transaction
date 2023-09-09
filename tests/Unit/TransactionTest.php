<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Query\Expression;
use App\Transaction;
use Mockery;

class TransactionTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
    public function test_ajax_lit()
    {
      $mockData = [
        [
            "id" => "121",
            "merchant_id" => "46",
            "outlet_id" => "82",
            "staff_id" => "1",
            "pay_amount" => "977000",
            "change_amount" => "69000",
            "payment_type" => "3",
            "tax" => "0.1",
            "customer_id" => "6",
            "total_amount" => "13000",
            "payment_status" => "1",
            "created_at" => "2023-09-08 20:20:24",
            "updated_at" => "2023-09-08 20:20:24",
            "merchant_name" => "eva.mustofa mart",
            "outlet_name" => "Palangka Raya store",
            "staff_name" => "Vivi Melani",
            "customer_name" => "Utama Utama"
        ],
        [
            "id" => "121",
            "merchant_id" => "46",
            "outlet_id" => "82",
            "staff_id" => "1",
            "pay_amount" => "977000",
            "change_amount" => "69000",
            "payment_type" => "3",
            "tax" => "0.1",
            "customer_id" => "6",
            "total_amount" => "13000",
            "payment_status" => "1",
            "created_at" => "2023-09-08 20:20:24",
            "updated_at" => "2023-09-08 20:20:24",
            "merchant_name" => "eva.mustofa mart",
            "outlet_name" => "Palangka Raya store",
            "staff_name" => "Vivi Melani",
            "customer_name" => "Utama Utama"
        ]
      ];
      $mockTransaction = Mockery::mock(Transaction::class);
      // Mock the DB facade to replace the actual database query
      $mockTransaction->shouldReceive('select')
      ->once()
      ->andReturn($mockData); // The data you expect the query to return

      $payload = [
        "start" =>  0,
        "draw" => 1
      ];

      // Send a POST request to the /transaction/ajax_list route
      $response = $this->post(route('transaction-ajax-list'), $payload);
      // Assert that the response has a status of 200 (OK)
      $response->assertStatus(200);
    }
}