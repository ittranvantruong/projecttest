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

	public function store(Request $request){
		
		$data = $request->only('title', 'content');
		
		$create = $this->blogRepository->store($data);

		return $create;
	}

	public function update(Request $request){
		
		$data = $request->only('title', 'content');
		
		return $this->blogRepository->update($request->id, $data);

	}

	public function delete(Request $request){
		
		return $this->blogRepository->delete(23);

	}

}