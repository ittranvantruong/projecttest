<?php

namespace App\Repositories\Blog;

interface BlogRepositoryInterface
{
	public function getAll();
	
	public function create(array $data);
}