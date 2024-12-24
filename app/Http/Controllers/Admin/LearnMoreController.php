<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\LearnMore;
use App\Services\Notify;
use App\Traits\FileUploadTrait;
use Illuminate\Http\Request;

class LearnMoreController extends Controller
{
    use FileUploadTrait;

    function __construct()
    {
        $this->middleware(['permission:sections']);
    }
    
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $learn = LearnMore::first();
        return view('admin.learn-more.index', compact('learn'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'image' => ['nullable', 'image', 'max:3000'],
            'title' => ['required', 'max:255'],
            'main_title' => ['required', 'max:255'],
            'sub_title' => ['required', 'max:255'],
            'ulr' => ['nullable'],

        ]);

        $imagePath = $this->uploadFile($request, 'image');

        $formData =  [];
        if($imagePath) $formData['image'] = $imagePath;

        $formData['title'] = $request->title;
        $formData['main_title'] = $request->main_title;
        $formData['sub_title'] = $request->sub_title;
        $formData['url'] = $request->url;


        LearnMore::updateOrCreate(
            ['id' => 1],
            $formData
        );
        Notify::updatedNotification();

        return redirect()->back();
    }
}
