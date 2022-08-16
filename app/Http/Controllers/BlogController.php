<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\BlogService\BlogServiceInterface;

class BlogController extends Controller
{
    //
	protected $blogRepository;

    public function __construct(BlogServiceInterface $blogRepository)
    {
        $this->blogRepository = $blogRepository;
    }
    public function create(){
    	return view('public.index');
    }

    public function store(Request $request){
    	return $this->blogRepository->create($request);
    }
}
