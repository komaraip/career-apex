<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RolePermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $permissions = array(
            array(
                "id" => 1,
                "name" => "dashboard analytics",
                "guard_name" => "admin",
                "group" => "Dashboard",
                "created_at" => "2024-02-06 03:56:14",
                "updated_at" => "2024-02-06 03:56:14",
            ),
            array(
                "id" => 2,
                "name" => "dashboard pending posts",
                "guard_name" => "admin",
                "group" => "Dashboard",
                "created_at" => "2024-02-06 03:56:31",
                "updated_at" => "2024-02-06 03:56:31",
            ),
            array(
                "id" => 3,
                "name" => "order index",
                "guard_name" => "admin",
                "group" => "Order",
                "created_at" => "2024-02-06 04:41:50",
                "updated_at" => "2024-02-06 04:41:50",
            ),
            array(
                "id" => 4,
                "name" => "job category create",
                "guard_name" => "admin",
                "group" => "Job Category",
                "created_at" => "2024-02-06 04:42:54",
                "updated_at" => "2024-02-06 04:42:54",
            ),
            array(
                "id" => 5,
                "name" => "job category update",
                "guard_name" => "admin",
                "group" => "Job Category",
                "created_at" => "2024-02-06 04:43:00",
                "updated_at" => "2024-02-06 04:43:00",
            ),
            array(
                "id" => 6,
                "name" => "job category delete",
                "guard_name" => "admin",
                "group" => "Job Category",
                "created_at" => "2024-02-06 04:43:06",
                "updated_at" => "2024-02-06 04:43:06",
            ),
            array(
                "id" => 7,
                "name" => "job create",
                "guard_name" => "admin",
                "group" => "Job",
                "created_at" => "2024-02-06 04:44:13",
                "updated_at" => "2024-02-06 04:44:13",
            ),
            array(
                "id" => 8,
                "name" => "job update",
                "guard_name" => "admin",
                "group" => "Job",
                "created_at" => "2024-02-06 04:44:19",
                "updated_at" => "2024-02-06 04:44:19",
            ),
            array(
                "id" => 9,
                "name" => "job delete",
                "guard_name" => "admin",
                "group" => "Job",
                "created_at" => "2024-02-06 04:44:27",
                "updated_at" => "2024-02-06 04:44:27",
            ),
            array(
                "id" => 10,
                "name" => "job role",
                "guard_name" => "admin",
                "group" => "Job Role",
                "created_at" => "2024-02-06 04:46:17",
                "updated_at" => "2024-02-06 04:46:17",
            ),
            array(
                "id" => 11,
                "name" => "job attributes",
                "guard_name" => "admin",
                "group" => "Job Attributes",
                "created_at" => "2024-02-06 04:48:23",
                "updated_at" => "2024-02-06 04:48:23",
            ),
            array(
                "id" => 12,
                "name" => "job locations",
                "guard_name" => "admin",
                "group" => "Job Locations",
                "created_at" => "2024-02-06 04:49:00",
                "updated_at" => "2024-02-06 04:49:00",
            ),
            array(
                "id" => 13,
                "name" => "sections",
                "guard_name" => "admin",
                "group" => "Site Sections",
                "created_at" => "2024-02-06 04:49:31",
                "updated_at" => "2024-02-06 04:49:31",
            ),
            array(
                "id" => 14,
                "name" => "site pages",
                "guard_name" => "admin",
                "group" => "Site Pages",
                "created_at" => "2024-02-06 04:50:09",
                "updated_at" => "2024-02-06 04:50:09",
            ),
            array(
                "id" => 15,
                "name" => "site footer",
                "guard_name" => "admin",
                "group" => "Site Footer",
                "created_at" => "2024-02-06 04:50:48",
                "updated_at" => "2024-02-06 04:50:48",
            ),
            array(
                "id" => 16,
                "name" => "blogs",
                "guard_name" => "admin",
                "group" => "Blogs",
                "created_at" => "2024-02-06 04:51:23",
                "updated_at" => "2024-02-06 04:51:23",
            ),
            array(
                "id" => 17,
                "name" => "price plan",
                "guard_name" => "admin",
                "group" => "Price Plan",
                "created_at" => "2024-02-06 04:51:54",
                "updated_at" => "2024-02-06 04:51:54",
            ),
            array(
                "id" => 18,
                "name" => "news letter",
                "guard_name" => "admin",
                "group" => "News Letter",
                "created_at" => "2024-02-06 04:52:37",
                "updated_at" => "2024-02-06 04:52:37",
            ),
            array(
                "id" => 19,
                "name" => "menu builder",
                "guard_name" => "admin",
                "group" => "Menu Builder",
                "created_at" => "2024-02-06 04:53:11",
                "updated_at" => "2024-02-06 04:53:11",
            ),
            array(
                "id" => 20,
                "name" => "access management",
                "guard_name" => "admin",
                "group" => "Access Management",
                "created_at" => "2024-02-06 04:53:58",
                "updated_at" => "2024-02-06 04:53:58",
            ),
            array(
                "id" => 21,
                "name" => "payment settings",
                "guard_name" => "admin",
                "group" => "Payment Settings",
                "created_at" => "2024-02-06 04:54:36",
                "updated_at" => "2024-02-06 04:54:36",
            ),
            array(
                "id" => 22,
                "name" => "site settings",
                "guard_name" => "admin",
                "group" => "Site Settings",
                "created_at" => "2024-02-06 04:54:44",
                "updated_at" => "2024-02-06 04:54:44",
            ),
            array(
                "id" => 23,
                "name" => "database clear",
                "guard_name" => "admin",
                "group" => "Database Clear",
                "created_at" => "2024-02-06 04:54:54",
                "updated_at" => "2024-02-06 04:54:54",
            ),
        );

        \DB::table('permissions')->insert($permissions);

        $roles = array(
            array(
                "id" => 1,
                "name" => "Super Admin",
                "guard_name" => "admin",
                "created_at" => "2024-02-06 09:55:55",
                "updated_at" => "2024-02-06 09:55:55",
            ),
        );

        \Db::table('roles')->insert($roles);

        $role_has_permissions = array(
            array(
                "permission_id" => 1,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 2,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 3,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 4,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 5,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 6,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 7,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 8,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 9,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 10,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 11,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 12,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 13,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 14,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 15,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 16,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 17,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 18,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 19,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 20,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 21,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 22,
                "role_id" => 1,
            ),
            array(
                "permission_id" => 23,
                "role_id" => 1,
            ),
        );

        \DB::table('role_has_permissions')->insert($role_has_permissions);

    }
}
