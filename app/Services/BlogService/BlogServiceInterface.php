<?php

namespace App\Services\BlogService;
use Illuminate\Http\Request;

interface BlogServiceInterface {
	
	public function create(Request $request);

	// public function update(Request $request, $id = null);

 //    public function delete($id);
}