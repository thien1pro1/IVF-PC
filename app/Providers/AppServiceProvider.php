<?php

namespace App\Providers;
use Illuminate\Support\Facades\View;

use App\Models\Categogy;
use App\Models\Medicine;
use App\Models\User;
use App\Models\Post;



use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    public $all_category_client;
    public $all_medicine;
    public $all_doctor;
    public $all_post;
    public $all_service;



    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $this->all_category_client = Categogy::where('id','!=','0')->get();
        $this->all_service = Categogy::where('id','0')->get();
        view()->composer('layouts.client', function($view) {
            $view->with([
                'all_category_client' => $this->all_category_client,
                'all_service' => $this->all_service
            ]);
        });
      
        // View::share('all_category_client', $all_category_client);
    }
}
