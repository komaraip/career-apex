<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\AppliedJob;
use App\Models\City;
use App\Models\Country;
use App\Models\Job;
use App\Models\JobCategory;
use App\Models\JobType;
use App\Models\State;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;
use Illuminate\View\View;

class FrontendJobPageController extends Controller
{
    function index(Request $request) : View {

        $countries = Country::all();
        $jobCategories = JobCategory::withCount(['jobs' => function($query) {
            $query->where('status', 'active')->where('deadline', '>=', date('Y-m-d'));
        }])->get();
        $jobTypes = JobType::all();
        $selectedStates = null;
        $selectedCites = null;


        $query = Job::query();
        $query->where(['status' => 'active'])
        ->where('deadline', '>=', date('Y-m-d'));

        if($request->has('search') && $request->filled('search')) {
            $query->where('title', 'like', '%'. $request->search . '%');
        }
        if($request->has('country') && $request->filled('country')) {
            $query->where('country_id', $request->country);
        }
        if($request->has('state') && $request->filled('state')) {
            $query->where('state_id', $request->state);
            $selectedStates = State::where('country_id', $request->country)->get();
            $selectedCites = City::where('state_id', $request->state)->get();

        }
        if($request->has('city') && $request->filled('city')) {
            $query->where('city_id', $request->city);
        }

        if($request->has('category') && $request->filled('category')) {
            if(is_array($request->category)){
                $categoryIds = JobCategory::whereIn('slug', $request->category)->pluck('id')->toArray();
                $query->whereIn('job_category_id', $categoryIds);
            }else {
                $category = JobCategory::where('slug', $request->category)->first();
                $query->where('job_category_id', $category->id);
            }
        }
        if($request->has('min_salary') && $request->filled('min_salary') && $request->min_salary > 0) {
            $query->where('min_salary', '>=', $request->min_salary)->orWhere('max_salary', '>=', $request->min_salary);
        }
        if($request->has('jobtype') && $request->filled('jobtype')) {
            $typeIds = JobType::whereIn('slug', $request->jobtype)->pluck('id')->toArray();
            $query->whereIn('job_type_id', $typeIds);
        }

        $jobs = $query->paginate(8);



        return view('frontend.pages.jobs-index', compact('jobs', 'countries', 'jobCategories', 'jobTypes', 'selectedStates', 'selectedCites'));
    }

    function show(string $slug) : View {
        $job = Job::where('slug', $slug)->firstOrFail();
        $openJobs = Job::where('company_id', $job->company->id)->where('status', 'active')->where('deadline', '>=', date('Y-m-d'))->count();
        $alreadyApplied = AppliedJob::where(['job_id' => $job->id, 'candidate_id' => auth()->user()?->id])->exists();
        return view('frontend.pages.job-show', compact('job', 'openJobs', 'alreadyApplied'));
    }

    function applyJob(string $id) {
        if(!auth()->check()) {
            throw ValidationException::withMessages(['Please login for apply to the job.']);
        }
        $alreadyApplied = AppliedJob::where(['job_id' => $id, 'candidate_id' => auth()->user()?->id])->exists();
        if($alreadyApplied) {
            throw ValidationException::withMessages(['You already applied to this job.']);
        }

        $applyJob = new AppliedJob();
        $applyJob->job_id = $id;
        $applyJob->candidate_id = auth()->user()->id;
        $applyJob->save();

        return response(['message' => 'Applied Successfully!'], 200);
    }
}
