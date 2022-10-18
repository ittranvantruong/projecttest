<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\models\Category;
use Yajra\DataTables\DataTables;

class CategoryController extends Controller
{
    //
    private $arrCat = [];
    public function index(){
        $cat = Category::with('parents')->find(500);
        dd($cat);
        // for($i = 5; $i < 1000; $i++){
        //     Category::create([
        //         'name' => 'Category '.\Str::random(5),
        //         'slug' => 'Category '.\Str::random(5),
        //         'status' => rand(0,1),
        //         'parent_id' => rand(0,999)
        //     ]);
        // }
        return view('category.index');
    }

    public function getArrayData()
    {
        $cat = Category::select('id', 'name', 'parent_id', 'status')->whereNull('parent_id')->with('tree')->get();

        $cat = $cat->toArray();
        $this->arrayTree($cat);
        $arrCat = collect($this->arrCat);
        return Datatables::of($arrCat)
        ->editColumn('name', '{{ $depth }}{{ $name }} ')
        ->editColumn('status', function($arrCat){
            return $arrCat['status'] ? 'Hiện' : 'Ẩn';
        })
        ->make(true);
    }

    public function arrayTree($arr, $depth = ''){
        foreach($arr as $item){
            $item['depth'] = $depth;
            $tree = $item['tree'];
            unset($item['tree']);
            array_push($this->arrCat, $item);
            
            if(count($tree) > 0){
                $this->arrayTree($tree, $depth.'-');
            }

        }
    }

}
