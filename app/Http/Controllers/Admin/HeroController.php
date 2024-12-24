<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Hero;
use App\Services\Notify;
use App\Traits\FileUploadTrait;
use Illuminate\Http\Request;
use Illuminate\View\View;

class HeroController extends Controller
{
    use FileUploadTrait;

    function __construct()
    {
        $this->middleware(['permission:sections']);
    }

    /**
     * Display a listing of the resource.
     */
    public function index() : View
    {
        $hero = Hero::first();
        return view('admin.hero.index', compact('hero'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'image' => ['nullable', 'image', 'max:3000'],
            'background_image' => ['nullable', 'image', 'max:3000'],
            'title' => ['required', 'max:255'],
            'sub_title' => ['required', 'max:255'],
        ]);

        $imagePath = $this->uploadFile($request, 'image');
        $backgroundPath = $this->uploadFile($request, 'background_image');

        $formData =  [];
        if($imagePath) $formData['image'] = $imagePath;
        if($backgroundPath) $formData['background_image'] = $backgroundPath;
        $formData['title'] = $request->title;
        $formData['sub_title'] = $request->sub_title;

        Hero::updateOrCreate(
            ['id' => 1],
            $formData
        );
        Notify::updatedNotification();

        return redirect()->back();
    }

}
