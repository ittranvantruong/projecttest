<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DataTables\UsersDataTable;

class UserController extends Controller
{
    //
    public function index(UsersDataTable $dataTable)
    {
        return $dataTable->render('user.index');
    }

    public function create(){
    	return view('user.create')->with('data', [
    		'alert', 'danger'
    	]);
    }

}
