<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\PaypalSettingUpdateReqeust;
use App\Http\Requests\Admin\RazorpaySettingUpdateRequest;
use App\Http\Requests\Admin\StripeSettingUpdateRequest;
use App\Models\Country;
use App\Models\PaymentSetting;
use App\Services\Notify;
use App\Services\PaymentGatewaySettingService;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class PaymentSettingController extends Controller
{
    function __construct()
    {
        $this->middleware(['permission:payment settings']);
    }

    function index() : View {

        return view('admin.payment-setting.index');
    }

    function updatePaypalSetting(PaypalSettingUpdateReqeust $request) : RedirectResponse {

        $validatedData = $request->validated();

        foreach($validatedData as $key => $value) {
            PaymentSetting::updateOrCreate(
                ['key' => $key],
                ['value' => $value]
            );
        }
        $settingsService = app(PaymentGatewaySettingService::class);
        $settingsService->clearCachedSettings();

        Notify::updatedNotification();

        return redirect()->back();
    }

    function updateStripeSetting(StripeSettingUpdateRequest $request) : RedirectResponse {
        $validatedData = $request->validated();

        foreach($validatedData as $key => $value) {
            PaymentSetting::updateOrCreate(
                ['key' => $key],
                ['value' => $value]
            );
        }
        $settingsService = app(PaymentGatewaySettingService::class);
        $settingsService->clearCachedSettings();

        Notify::updatedNotification();

        return redirect()->back();
    }


    function updateRazorpaySetting(RazorpaySettingUpdateRequest $request) : RedirectResponse {
        $validatedData = $request->validated();

        foreach($validatedData as $key => $value) {
            PaymentSetting::updateOrCreate(
                ['key' => $key],
                ['value' => $value]
            );
        }
        $settingsService = app(PaymentGatewaySettingService::class);
        $settingsService->clearCachedSettings();

        Notify::updatedNotification();

        return redirect()->back();
    }
}
