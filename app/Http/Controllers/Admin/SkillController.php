<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Candidate;
use App\Models\CandidateSkill;
use App\Models\JobSkills;
use App\Models\Skill;
use App\Services\Notify;
use App\Traits\Searchable;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class SkillController extends Controller
{
    use Searchable;

    function __construct()
    {
        $this->middleware(['permission:job attributes']);
    }
    
    /**
     * Display a listing of the resource.
     */
    public function index() : View
    {
        $query = Skill::query();
        $this->search($query, ['name']);
        $skills = $query->paginate(20);

        return view('admin.skill.index', compact('skills'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create() : View
    {
        return view('admin.skill.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request) : RedirectResponse
    {
        $request->validate([
            'name' => ['required', 'max:255', 'unique:skills,name']
        ]);

        $profession = new Skill();
        $profession->name = $request->name;
        $profession->save();

        Notify::createdNotification();

        return to_route('admin.skills.index');
    }


    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id) : View
    {
        $skill = Skill::findOrFail($id);
        return view('admin.skill.edit', compact('skill'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'name' => ['required', 'max:255', 'unique:skills,name,'.$id]
        ]);

        $profession = Skill::findOrFail($id);
        $profession->name = $request->name;
        $profession->save();

        Notify::updatedNotification();

        return to_route('admin.skills.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $skillExist = JobSkills::where('skill_id', $id)->exists();
        $candidateSkillExist = CandidateSkill::where('skill_id', $id)->exists();


        if($skillExist || $candidateSkillExist) {
            return response(['message' => 'This item is already been used can\'t delete!'], 500);
        }

        try {
            Skill::findOrFail($id)->delete();
            Notify::deletedNotification();
            return response(['message' => 'success'], 200);

        }catch(\Exception $e) {
            logger($e);
            return response(['message' => 'Something Went Wrong Please Try Again!'], 500);
        }
    }
}
