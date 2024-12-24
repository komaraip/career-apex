<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Job;
use App\Models\JobRole;
use App\Services\Notify;
use App\Traits\Searchable;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class JobRoleController extends Controller
{
    use Searchable;

    function __construct()
    {
        $this->middleware(['permission:job role']);
    }

    /**
     * Display a listing of the resource.
     */
    public function index() : View
    {
        $query = JobRole::query();
            $this->search($query, ['name', 'slug']);
            $jobRoles = $query->paginate(20);
        return view('admin.job.job-role.index', compact('jobRoles'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create() : View
    {
        return view('admin.job.job-role.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request) : RedirectResponse
    {
        $request->validate([
            'name' => ['required', 'max:255'],
        ]);

        $type = new JobRole();
        $type->name = $request->name;
        $type->save();

        Notify::createdNotification();
        return to_route('admin.job-roles.index');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $role = JobRole::findOrFail($id);
        return view('admin.job.job-role.edit', compact('role'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'name' => ['required', 'max:255'],
        ]);

        $type = JobRole::findOrFail($id);
        $type->name = $request->name;
        $type->save();

        Notify::updatedNotification();
        return to_route('admin.job-roles.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        // validation
        $jobExist = Job::where('job_role_id', $id)->exists();

        if($jobExist) {
            return response(['message' => 'This item is already been used can\'t delete!'], 500);
        }

        try {
            JobRole::findOrFail($id)->delete();
            Notify::deletedNotification();
            return response(['message' => 'success'], 200);

        }catch(\Exception $e) {
            logger($e);
            return response(['message' => 'Something Went Wrong Please Try Again!'], 500);
        }
    }
}
