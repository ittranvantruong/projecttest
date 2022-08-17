<?php
namespace App\Services\BlogService;

use App\Services\BlogService\BlogServiceInterface;
use Illuminate\Http\Request;
use App\Repositories\Blog\BlogRepositoryInterface;

class BlogService implements BlogServiceInterface{

	protected $blogRepository;

	public function __construct(BlogRepositoryInterface $blogRepository){
		$this->blogRepository = $blogRepository;
	}

	public function create(Request $request){
		
		$data = $request->only('title', 'content');
		
		$create = $this->blogRepository->create($data);

		dd($create);

	}
}