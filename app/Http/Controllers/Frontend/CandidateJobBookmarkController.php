<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\JobBookmark;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Illuminate\View\View;

class CandidateJobBookmarkController extends Controller
{
    function index() : View {
        $bookmarks = JobBookmark::where('candidate_id', auth()->user()->candidateProfile->id)->paginate();
        return view('frontend.candidate-dashboard.bookmarks.index', compact('bookmarks'));
    }

    function save(string $id) {
        if(!auth()->check()) {
            throw ValidationException::withMessages(['Please login first for bookmark']);
        }
        if(auth()->check() && auth()->user()->role !== 'candidate') {
            throw ValidationException::withMessages(['only candidates will be able to add book marks']);
        }
        $alreadyMarked = JobBookmark::where(['job_id' => $id, 'candidate_id' => auth()->user()->candidateProfile->id])->exists();
        if($alreadyMarked) {
            throw ValidationException::withMessages(['Post is already bookmarked!']);
        }
        $bookmark = new JobBookmark();
        $bookmark->job_id = $id;
        $bookmark->candidate_id = auth()->user()->candidateProfile->id;
        $bookmark->save();

        return response(['message' => 'bookmarked added successfully!', 'id' => $id]);

    }
}
