<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    protected $services = [
        'App\Services\BlogService\BlogServiceInterface' => 'App\Services\BlogService\BlogService',
        'App\Repositories\Blog\BlogRepositoryInterface' => 'App\Repositories\Blog\BlogRepository'
    ];
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
        foreach ($this->services as $interface => $implement) {
            $this->app->singleton($interface, $implement);
        }
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        
    }
}
