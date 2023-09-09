<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class TransactionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      $faker = Faker::create('id_ID');
			for($i = 1; $i <= 99; $i++){
				DB::table('transactions')->insert([
					'merchant_id' => $faker->randomNumber(2),
					'outlet_id' => $faker->randomNumber(2),
					'staff_id' => $faker->randomNumber(2),
					'pay_amount' => $faker->randomNumber(6),
					'payment_type' => $faker->randomElement(['1', '2', '3']),
					'customer_id' => $faker->randomNumber(2),
					'change_amount' => $faker->randomNumber(5),
					'total_amount' => $faker->randomNumber(5),
					'tax' => $faker->randomElement([0.1, 0.2, 0.3]),
					'payment_status' => $faker->randomElement(['0', '1'])
				]);
			}

    }
}
