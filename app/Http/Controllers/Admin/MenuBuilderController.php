<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class MenuBuilderController extends Controller
{
    function __construct()
    {
        $this->middleware(['permission:menu builder']);
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('admin.menu-builder.index');
    }
}
