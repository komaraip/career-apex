<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Job;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;

class CompanyDashboardController extends Controller
{
    function index() : View {
        $jobPosts = Job::where('company_id', Auth::user()->company?->id)->where('status', 'pending')->count();
        $totalJobs = Job::where('company_id', Auth::user()->company?->id)->count();

        return view('frontend.company-dashboard.dashboard', compact('jobPosts', 'totalJobs'));
    }
}
