<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Footer;
use App\Services\Notify;
use App\Traits\FileUploadTrait;
use Illuminate\Http\Request;

class FooterController extends Controller
{
    use FileUploadTrait;

    function __construct()
    {
        $this->middleware(['permission:site footer']);
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $footer = Footer::first();
        return view('admin.footer.index', compact('footer'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $imagePath = $this->uploadFile($request, 'logo');
        $data = [
            'copyright' => $request->copyright,
            'details' => $request->details
        ];
        if($imagePath) $data['logo'] = $imagePath;

        Footer::updateOrCreate(
            ['id' => 1],
            $data
        );

        Notify::updatedNotification();

        return redirect()->back();
    }

}
