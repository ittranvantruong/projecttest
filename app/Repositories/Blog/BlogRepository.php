<?php

namespace App\Repositories\Blog;

use App\Repositories\Blog\BlogRepositoryInterface;
use App\Models\Blog;
use App\Repositories\EloquentRepository;

class BlogRepository extends EloquentRepository implements BlogRepositoryInterface
{
	/**
     * get model
     * @return string
     */
    public function getModel()
    {
        return Blog::class;
    }

}