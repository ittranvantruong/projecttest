<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Jobs\SendMail;
use Illuminate\Support\Facades\Cache;

class HomeController extends Controller
{
    //
    public function index(){
    	return view('index');
    }

    public function createQueue(){
        
        $array = [
            'title' => 'title 3',
            'content' => 'content 3',
            'user_id' => 3,
        ];
        
        // SendMail::dispatch($array)->delay(now()->addMinutes(1));

        // $value = Cache::remember('blog', now()->addDay(), function () {
        //     return \DB::table('blogs')->get();
        // });
        // $q = \DB::table('blogs')->insert($array);
        // Cache::put('blog', $q);
        dd(Cache::increment('blog'));
        return true;
    }
}
