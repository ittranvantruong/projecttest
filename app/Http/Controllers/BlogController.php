<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\BlogService\BlogServiceInterface;
use App\Repositories\Blog\BlogRepositoryInterface;
use Illuminate\Support\Facades\Auth;

class BlogController extends Controller
{
    //
    protected $blogService;
	protected $blogRepository;

    public function __construct(BlogServiceInterface $blogService, BlogRepositoryInterface $blogRepository)
    {
        $this->blogService = $blogService;
        $this->blogRepository = $blogRepository;
    }

    public function index(){

        $blog = $this->blogRepository->getAll();

        return view('public.blog.index', compact('blog'));

    }
    public function show($id){
        
        $blog = $this->blogRepository->find($id);

        dd($blog);

    }

    public function edit($id){
        
        $blog = $this->blogRepository->find($id);
        
        if($blog){
            return view('public.blog.edit', compact('blog'));
        }

        return abort(404);

    }

    public function create(){

        return view('public.blog.create');

    }

    public function store(Request $request){

    	$this->blogService->store($request);

        return back();

    }

    public function update(Request $request){

        $this->blogService->update($request);

        return back();

    }
    public function delete(Request $request){

        return $this->blogService->delete($request);

    }
}
