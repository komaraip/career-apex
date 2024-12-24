<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Plan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\View\View;

use function Ramsey\Uuid\v1;

class CheckoutPageController extends Controller
{
    /**
     * Handle the incoming request.
     */
    public function __invoke(Request $request, string $id) : View
    {
        $plan = Plan::findOrFail($id);
        Session::put('selected_plan', $plan->toArray());
        return view('frontend.pages.checkout-index', compact('plan'));
    }
}
