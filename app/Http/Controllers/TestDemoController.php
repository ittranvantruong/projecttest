<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class TestDemoController extends Controller
{
    //
    public function index(Request $request){
    	// $query = DB::table('student')->where('id', 1)->delete();
		// dd($query);
    	$name = $request->name;
    	return view('public.index', ['name123' => $name, 'name321' => '321']);
    }

    public function getProvince(){
        $response = Http::get('https://provinces.open-api.vn/api/p/');
        foreach($response->object() as $item){
            DB::table('provinces')->insert([
                'code' => $item->code, 
                'name' => $item->name, 
                'division_type' => $item->division_type, 
                'codename' => $item->codename, 
                'phone_code' => $item->phone_code                
            ]);
        }
    }

    public function getDistrict(){
        $response = Http::get('https://provinces.open-api.vn/api/p/79?depth=3');

        foreach($response->object()->districts as $item){
            DB::table('districts')->insert([
                'code' => $item->code, 
                'name' => $item->name, 
                'division_type' => $item->division_type, 
                'codename' => $item->codename, 
                'province_code' => $item->province_code                
            ]);
            // foreach($item->wards as $item){
            //     DB::table('wards')->insert([
            //         'code' => $item->code, 
            //         'name' => $item->name, 
            //         'division_type' => $item->division_type, 
            //         'codename' => $item->codename, 
            //         'district_code' => $item->district_code                
            //     ]);                
            // }
        }   

    }

    public function getDB(){
        return DB::table('districts')->truncate();
    }

}
