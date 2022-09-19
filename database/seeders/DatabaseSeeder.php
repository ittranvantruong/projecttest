<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use \App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
         Schema::disableForeignKeyConstraints();
        User::truncate();
        Schema::enableForeignKeyConstraints();
        
        $faker = Faker\Factory::create('ja_JP');
        $limit = 100;
        $lang = [User::LANG_JAPANESE, User::LANG_VIETNAMESE];

        for ($i = 0; $i < $limit; $i++) {
            $randomKey = array_rand($lang);
            User::create([
                'login_id' => $faker->unique()->ean8,
                'username' => $faker->username,
                'password' => Hash::make(12345678),         
                'email' => $faker->unique()->safeEmail,
                'role_id' => Role::all()->random()->id,
            ]);
        }
    }
}
