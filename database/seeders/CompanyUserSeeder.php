<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CompanyUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for($i = 1; $i <= 20; $i++) {
            $user = new User();
            $user->name = fake()->name();
            $user->email = fake()->email();
            $user->role = 'company';
            $user->password = bcrypt('password');
            $user->save();
           }
    }
}
