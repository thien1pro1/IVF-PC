<?php

namespace App\Providers;
use Illuminate\Support\Facades\View;

use App\Models\Categogy;
use App\Models\Medicine;
use App\Models\User;


use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    public $all_category_client;
    public $all_medicine;
    public $all_doctor;

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
        $this->all_category_client = Categogy::get();
        $this->all_medicine = Medicine::get();
        $this->all_doctor = User::where('position_id',2)->get();

        // foreach($this->all_category_client as $cate){
        //     dd($cate->id);
        // }
        view()->composer('layouts.client', function($view) {
            $view->with(['all_category_client' => $this->all_category_client]);
        });
        // View::share('all_category_client', $all_category_client);
    }
}
