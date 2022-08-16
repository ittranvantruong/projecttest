<?php
namespace App\Services\BlogService;

use App\Services\BlogService\BlogServiceInterface;
use Illuminate\Http\Request;

class BlogService implements BlogServiceInterface{

	public function create(Request $request){
		return $request->title;
	}
}