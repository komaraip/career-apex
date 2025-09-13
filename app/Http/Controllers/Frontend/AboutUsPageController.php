<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\About;
use App\Models\Blog;
use App\Models\Review;
use Illuminate\Http\Request;
use Illuminate\View\View;

class AboutUsPageController extends Controller
{
    function index() : View {
        $about = About::first();
        $reviews = Review::latest()->take(10)->get();
        $blogs = Blog::latest()->take(6)->get();
        return view('frontend.pages.about-us', compact('about', 'reviews', 'blogs'));
    }
}
