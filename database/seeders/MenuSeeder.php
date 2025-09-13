<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $admin_menus = array(
            array(
                "id" => 1,
                "name" => "Navigation Menu",
                "created_at" => NULL,
                "updated_at" => NULL,
            ),
            array(
                "id" => 3,
                "name" => "Footer Menu One",
                "created_at" => "2024-02-01 02:35:53",
                "updated_at" => "2024-02-01 02:35:53",
            ),
            array(
                "id" => 4,
                "name" => "Footer Menu Two",
                "created_at" => "2024-02-01 02:36:11",
                "updated_at" => "2024-02-01 02:36:11",
            ),
            array(
                "id" => 5,
                "name" => "Footer Menu Three",
                "created_at" => "2024-02-01 02:36:25",
                "updated_at" => "2024-02-01 02:36:25",
            ),
            array(
                "id" => 6,
                "name" => "Footer Menu Four",
                "created_at" => "2024-02-01 02:36:38",
                "updated_at" => "2024-02-01 02:36:38",
            ),
        );

        \DB::table('admin_menus')->insert($admin_menus);
    }
}
