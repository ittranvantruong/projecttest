<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\BlogService\BlogServiceInterface;

class BlogController extends Controller
{
    //
	protected $blogService;

    public function __construct(BlogServiceInterface $blogService)
    {
        $this->blogService = $blogService;
    }
    
    public function create(){
    	return view('public.index');
    }

    public function store(Request $request){
    	return $this->blogService->create($request);
    }
}
