<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $table = 'categories';

    protected $guarded = [];

    public function childs(){
        return $this->hasMany(Category::class, 'parent_id', 'id');
    }

    public function tree(){
        return $this->hasMany(Category::class, 'parent_id', 'id')->with('tree');
    }

    public function parents(){
        return $this->belongsTo(Category::class, 'parent_id', 'id')->with('parents');
    }
}
