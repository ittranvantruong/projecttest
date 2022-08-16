<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TestDemoController extends Controller
{
    //
    public function index(Request $request){
    	// $query = DB::table('student')->where('id', 1)->delete();
		// dd($query);
    	$name = $request->name;
    	return view('public.index', ['name123' => $name, 'name321' => '321']);
    }
}
