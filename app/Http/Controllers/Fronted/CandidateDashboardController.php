<?php

namespace App\Http\Controllers\Fronted;

use App\Http\Controllers\Controller;
use App\Models\AppliedJob;
use App\Models\JobBookmark;
use Illuminate\Http\Request;
use Illuminate\View\View;

class CandidateDashboardController extends Controller
{
    function index() : View {
        $jobAppliedCount = AppliedJob::where('candidate_id', auth()->user()->id)->count();
        $userBookmarksCount = JobBookmark::where('candidate_id', auth()->user()->candidateProfile?->id)->count();
        $appliedJobs = AppliedJob::with('job')->where('candidate_id', auth()->user()->id)->orderBy('id', 'DESC')->take(10)->get();
        return view('frontend.candidate-dashboard.dashboard', compact('jobAppliedCount', 'userBookmarksCount', 'appliedJobs'));
    }
}
