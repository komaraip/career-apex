<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PaymentSettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $payment_settings = array(
            array(
                "id" => 1,
                "key" => "paypal_status",
                "value" => "active",
                "created_at" => "2024-01-03 03:36:16",
                "updated_at" => "2024-01-08 04:31:01",
            ),
            array(
                "id" => 2,
                "key" => "paypal_account_mode",
                "value" => "sandbox",
                "created_at" => "2024-01-03 03:36:16",
                "updated_at" => "2024-01-03 03:36:16",
            ),
            array(
                "id" => 3,
                "key" => "paypal_country_name",
                "value" => "US",
                "created_at" => "2024-01-03 03:36:16",
                "updated_at" => "2024-01-03 03:36:16",
            ),
            array(
                "id" => 4,
                "key" => "paypal_currency_name",
                "value" => "USD",
                "created_at" => "2024-01-03 03:36:16",
                "updated_at" => "2024-01-04 04:11:42",
            ),
            array(
                "id" => 5,
                "key" => "paypal_currency_rate",
                "value" => "1",
                "created_at" => "2024-01-03 03:36:16",
                "updated_at" => "2024-01-04 04:11:42",
            ),
            array(
                "id" => 6,
                "key" => "paypal_client_id",
                "value" => "your_paypal_client_id_here",
                "created_at" => "2024-01-03 03:36:16",
                "updated_at" => "2024-01-03 09:41:24",
            ),
            array(
                "id" => 7,
                "key" => "paypal_client_secret",
                "value" => "your_paypal_client_secret_here",
                "created_at" => "2024-01-03 03:36:16",
                "updated_at" => "2024-01-03 09:41:24",
            ),
            array(
                "id" => 8,
                "key" => "paypal_app_id",
                "value" => "Client_app_id",
                "created_at" => "2024-01-03 03:36:16",
                "updated_at" => "2024-01-03 03:36:16",
            ),
            array(
                "id" => 9,
                "key" => "stripe_status",
                "value" => "active",
                "created_at" => "2024-01-06 05:34:39",
                "updated_at" => "2024-01-06 05:34:39",
            ),
            array(
                "id" => 10,
                "key" => "stripe_country_name",
                "value" => "US",
                "created_at" => "2024-01-06 05:34:39",
                "updated_at" => "2024-01-06 05:34:39",
            ),
            array(
                "id" => 11,
                "key" => "stripe_currency_name",
                "value" => "USD",
                "created_at" => "2024-01-06 05:34:39",
                "updated_at" => "2024-01-06 05:34:39",
            ),
            array(
                "id" => 12,
                "key" => "stripe_currency_rate",
                "value" => "1",
                "created_at" => "2024-01-06 05:34:39",
                "updated_at" => "2024-01-06 05:34:39",
            ),
            array(
                "id" => 13,
                "key" => "stripe_publishable_key",
                "value" => "pk_test_your_stripe_publishable_key_here",
                "created_at" => "2024-01-06 05:34:39",
                "updated_at" => "2024-01-06 05:34:39",
            ),
            array(
                "id" => 14,
                "key" => "stripe_secret_key",
                "value" => "sk_test_your_stripe_secret_key_here",
                "created_at" => "2024-01-06 05:34:39",
                "updated_at" => "2024-01-06 05:34:39",
            ),
            array(
                "id" => 15,
                "key" => "razorpay_status",
                "value" => "active",
                "created_at" => "2024-01-06 09:41:18",
                "updated_at" => "2024-01-06 09:41:18",
            ),
            array(
                "id" => 16,
                "key" => "razorpay_country_name",
                "value" => "IN",
                "created_at" => "2024-01-06 09:41:18",
                "updated_at" => "2024-01-06 09:41:18",
            ),
            array(
                "id" => 17,
                "key" => "razorpay_currency_name",
                "value" => "INR",
                "created_at" => "2024-01-06 09:41:18",
                "updated_at" => "2024-01-06 09:41:18",
            ),
            array(
                "id" => 18,
                "key" => "razorpay_currency_rate",
                "value" => "83.19",
                "created_at" => "2024-01-06 09:41:18",
                "updated_at" => "2024-01-06 09:41:18",
            ),
            array(
                "id" => 19,
                "key" => "razorpay_key",
                "value" => "rzp_test_your_razorpay_key_here",
                "created_at" => "2024-01-06 09:41:18",
                "updated_at" => "2024-01-06 10:28:38",
            ),
            array(
                "id" => 20,
                "key" => "razorpay_secret_key",
                "value" => "your_razorpay_secret_key_here",
                "created_at" => "2024-01-06 09:41:18",
                "updated_at" => "2024-01-06 10:28:38",
            ),
        );

        \DB::table('payment_settings')->insert($payment_settings);
    }
}
