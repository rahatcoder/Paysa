<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Carbon\Carbon;

class SetupSeeder extends Seeder{
    /**
     * Run the database seeds.
     */
    public function run(): void{
      DB::table('users')->insert([
          'name' => 'Saidul Islam Uzzal',
          'phone' => '01710726035',
          'email' => 'uzzalbd.creative@gmail.com',
          'password' => Hash::make('12345678'),
          'username' => 'uzzalbd',
          'role' => 1,
          'slug' => 'U'.uniqid(20),
          'created_at' => Carbon::now()->toDateTimeString(),
      ]);

      //basic table data seed
      DB::table('basics')->insert([
          'basic_company' => 'Creative System Limited',
          'basic_title' => 'Software Company',
          'basic_creator' => 1,
          'basic_slug' => 'B'.uniqid(20),
          'created_at' => Carbon::now()->toDateTimeString(),
      ]);

      //social media table data seed
      DB::table('social_media')->insert([
          'sm_facebook' => 'www.facebook.com',
          'sm_twitter' => '#',
          'sm_creator' => 1,
          'sm_slug' => 'SM'.uniqid(20),
          'created_at' => Carbon::now()->toDateTimeString(),
      ]);

      //contact information table data seed
      DB::table('contact_information')->insert([
          'ci_phone1' => '01710726035',
          'ci_email1' => 'info@domain.com',
          'ci_address1' => 'Dhanmondi, Dhaka.',
          'ci_creator' => 1,
          'ci_slug' => 'CI'.uniqid(20),
          'created_at' => Carbon::now()->toDateTimeString(),
      ]);

      //role table data seed
      $roles=['Superadmin','Admin','Author','Editor','Subscriber'];
      foreach ($roles as $urole) {
        DB::table('roles')->insert([
            'role_name' => $urole,
            'role_slug' => 'R'.uniqid(20),
            'created_at' => Carbon::now()->toDateTimeString(),
        ]);
      }

    }
}
