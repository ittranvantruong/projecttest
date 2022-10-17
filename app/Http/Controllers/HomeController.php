<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Jobs\SendMail;
use Illuminate\Support\Facades\Cache;

class HomeController extends Controller
{
    //
    public function index(Request $request){
        dd($request->header());
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

    public function getIp(){
        foreach (array('HTTP_CLIENT_IP', 'HTTP_X_FORWARDED_FOR', 'HTTP_X_FORWARDED', 'HTTP_X_CLUSTER_CLIENT_IP', 'HTTP_FORWARDED_FOR', 'HTTP_FORWARDED', 'REMOTE_ADDR') as $key){
            if (array_key_exists($key, $_SERVER) === true){
                foreach (explode(',', $_SERVER[$key]) as $ip){
                    $ip = trim($ip); // just to be safe
                    if (filter_var($ip, FILTER_VALIDATE_IP, FILTER_FLAG_NO_PRIV_RANGE | FILTER_FLAG_NO_RES_RANGE) !== false){
                        return $ip;
                    }
                }
            }
        }
    }
}
