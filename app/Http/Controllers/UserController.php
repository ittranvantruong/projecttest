<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DataTables\UsersDataTable;

class UserController extends Controller
{
    //
    public function index(UsersDataTable $dataTable)
    {
        // dd($dataTable->render('user.index'));
        return $dataTable->render('user.index');
    }

}
