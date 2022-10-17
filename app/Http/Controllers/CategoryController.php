<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\models\Category;

class CategoryController extends Controller
{
    //
    private $arrCat = [];
    public function index(){
        $cat = Category::whereNull('parent_id')->with('tree')->get();
        $cat = $cat->toArray();
        $this->arrayTree($cat);
        $this->arrCat = array_diff_key($this->arrCat, ['tree' => []]);

        dd($this->arrCat);
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
