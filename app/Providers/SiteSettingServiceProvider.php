<?php

namespace App\Providers;

use App\Services\SiteSettingService;
use Illuminate\Support\ServiceProvider;

class SiteSettingServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        $this->app->singleton(SiteSettingService::class, function(){
            return new SiteSettingService();
        });
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        $Setting = $this->app->make(SiteSettingService::class);
        $Setting->setGlobalSettings();
    }
}
