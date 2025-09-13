<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SiteSettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $site_settings = array(
            array(
                "id" => 1,
                "key" => "site_name",
                "value" => "JOBLIST",
                "created_at" => "2024-01-03 07:03:35",
                "updated_at" => "2024-01-30 09:57:08",
            ),
            array(
                "id" => 2,
                "key" => "site_email",
                "value" => "balomavy@mailinator.com",
                "created_at" => "2024-01-03 07:03:35",
                "updated_at" => "2024-01-03 07:03:35",
            ),
            array(
                "id" => 3,
                "key" => "site_phone",
                "value" => "+1646-784-9787",
                "created_at" => "2024-01-03 07:03:35",
                "updated_at" => "2024-01-03 07:03:35",
            ),
            array(
                "id" => 4,
                "key" => "site_default_currency",
                "value" => "USD",
                "created_at" => "2024-01-03 07:03:35",
                "updated_at" => "2024-01-03 07:03:35",
            ),
            array(
                "id" => 5,
                "key" => "site_currency_icon",
                "value" => "$",
                "created_at" => "2024-01-03 07:03:35",
                "updated_at" => "2024-01-03 07:03:35",
            ),
            array(
                "id" => 6,
                "key" => "site_map",
                "value" => "<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1824.8667200308832!2d90.42592680669435!3d23.828076048215905!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c646adb2897f%3A0x4b007974289814ab!2sInternational%20Convention%20City%20Bashundhara%2C%20Joar%20Sahara%2C%20Khilkhet%20(Beside%20300ft%20Purbachal%20Link%20Road)%2C%20Purbachal%20Expy%2C%20Dhaka!5e0!3m2!1sen!2sbd!4v1701764233068!5m2!1sen!2sbd\"           width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"           referrerpolicy=\"no-referrer-when-downgrade\"></iframe>",
                "created_at" => "2024-01-30 09:53:20",
                "updated_at" => "2024-01-30 09:59:42",
            ),
        );

        \DB::table('site_settings')->insert($site_settings);

    }
}
