<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\ContactMailRequest;
use App\Mail\ContactMail;
use Illuminate\Http\Request;
use Illuminate\View\View;
use Mail;

class ContactController extends Controller
{
    function index() : View {
        return view('frontend.pages.contact');
    }

    function sendMail(ContactMailRequest $request) {
        Mail::to(config('settings.site_email'))->send(new ContactMail($request->name, $request->email, $request->subject, $request->message));

        return response(['message' => 'Message sent successfully'], 200);
    }
}
