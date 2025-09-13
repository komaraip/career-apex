<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\IndustryType;
use App\Models\JobCategory;
use App\Models\TeamSize;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        $this->call(JobCategorySeeder::class);
        $this->call(JobRoleSeeder::class);
        $this->call(ProfessionSeeder::class);
        $this->call(SkillSeeder::class);
        $this->call(CountrySeeder::class);
        $this->call(ExperienceSeeder::class);
        $this->call(IndustryTypeSeeder::class);
        $this->call(OrganizationTypeSeeder::class);
        $this->call(TeamSizeSeeder::class);
        $this->call(JobSalaryTypeSeeder::class);
        $this->call(JobEducationSeeder::class);
        $this->call(JobTypeSeeder::class);
        $this->call(JobTagSeeder::class);



    }
}
