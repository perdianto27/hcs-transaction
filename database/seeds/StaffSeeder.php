<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class StaffSeeder extends Seeder
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
            DB::table('staffs')->insert([
                'staff_name' => $faker->name,
            ]);
        }
    }
}
