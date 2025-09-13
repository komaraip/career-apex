<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\City;
use App\Models\Company;
use App\Models\Country;
use App\Models\IndustryType;
use App\Models\Job;
use App\Models\OrganizationType;
use App\Models\State;
use Illuminate\Http\Request;
use Illuminate\View\View;

class FrontendCompanyPageController extends Controller
{
    function index(Request $request) : View {


        $countries = Country::all();
        $industryTypes = IndustryType::withCount('companies')->get();
        $organizations = OrganizationType::withCount('companies')->get();
        $selectedStates = null;
        $selectedCites = null;

        $query = Company::query();

        $query->withCount(['jobs' => function($query) {
            $query->where('status', 'active')->where('deadline', '>=', date('Y-m-d'));
        }])
        ->where(['profile_completion' => 1, 'visibility' => 1]);

        if($request->has('search') && $request->filled('search')) {
            $query->where('name', 'like', '%'. $request->search . '%');
        }
        if($request->has('country') && $request->filled('country')) {
            $query->where('country', $request->country);
        }
        if($request->has('state') && $request->filled('state')) {
            $query->where('state', $request->state);
            $selectedStates = State::where('country_id', $request->country)->get();
            $selectedCites = City::where('state_id', $request->state)->get();

        }
        if($request->has('city') && $request->filled('city')) {
            $query->where('city', $request->city);
        }

        if($request->has('industry') && $request->filled('industry')) {
            $query->whereHas('industryType', function($query) use ($request) {
                $query->where('slug', $request->industry);
            });
        }
        if($request->has('organization') && $request->filled('organization')) {
            $query->whereHas('organizationType', function($query) use ($request) {
                $query->where('slug', $request->organization);
            });
        }

        $companies = $query->paginate(21);

        return view('frontend.pages.company-index', compact('companies', 'countries', 'selectedStates', 'selectedCites', 'industryTypes', 'organizations'));
    }

    function show(string $slug) : View {
        $company = Company::where(['profile_completion' => 1, 'visibility' => 1, 'slug' => $slug])->firstOrFail();
        $openJobs = Job::where('company_id', $company->id)->where('status', 'active')->where('deadline', '>=', date('Y-m-d'))->paginate(10);

        return view('frontend.pages.company-details', compact('company', 'openJobs'));
    }
}
