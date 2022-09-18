<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory(5000)->create();
        // \DB::table('users')->insert([
        // 	'name' => 'truong',
        // 	'email' => 'truong@gmail.com',
        // 	'password' => bcrypt('12345')
        // ]);
        // \DB::table('blogs')->insert([
        // 	'title' => 'Ngày đẹp trời mát mẻ',
        // 	'content' => 'Ngày đẹp nhưng mà lại không đẹp vì ngày đẹp thì phải có thêm em.',
        // 	'user_id' => 3
        // ]);
    }
}
