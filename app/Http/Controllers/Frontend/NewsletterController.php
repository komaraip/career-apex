<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Subscribers;
use Illuminate\Http\Client\ResponseSequence;
use Illuminate\Http\Request;

class NewsletterController extends Controller
{
    function store(Request $request) {
        $request->validate([
            'email' => ['required', 'email', 'unique:subscribers,email']
        ]);

        $subscribe = new Subscribers();
        $subscribe->email = $request->email;
        $subscribe->save();

        return response(['message' => 'Subscribed Successfully.']);

    }
}
