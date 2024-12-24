<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Job;
use App\Models\Order;
use App\Models\UserPlan;
use Illuminate\Http\Request;
use Illuminate\View\View;

class CompanyDashboardController extends Controller
{
    function index() : View {
        $jobPosts = Job::where('company_id', auth()->user()->company?->id)->where('status', 'pending')->count();
        $totalJobs = Job::where('company_id', auth()->user()->company?->id)->count();
        $totalOrders = Order::where('company_id', auth()->user()->company?->id)->count();
        $userPlan = UserPlan::where('company_id', auth()->user()->company?->id)->first();

        return view('frontend.company-dashboard.dashboard', compact('jobPosts', 'totalJobs', 'totalOrders', 'userPlan'));
    }
}
