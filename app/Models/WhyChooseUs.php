<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhyChooseUs extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'icon_one',
        'title_one',
        'sub_title_one',
        'icon_two',
        'title_two',
        'sub_title_two',
        'icon_three',
        'title_three',
        'sub_title_three',
    ];
}
