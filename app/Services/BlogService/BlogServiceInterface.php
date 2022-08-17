<?php

namespace App\Services\BlogService;
use Illuminate\Http\Request;

interface BlogServiceInterface {
	
	public function store(Request $request);

	public function update(Request $request);

 //    public function delete($id);
}