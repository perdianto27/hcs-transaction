<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class MerchantSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
        for($i = 1; $i <= 20; $i++){
            DB::table('merchants')->insert([
                'merchant_name' => $faker->userName.' mart',
            ]);
        }
    }
}
