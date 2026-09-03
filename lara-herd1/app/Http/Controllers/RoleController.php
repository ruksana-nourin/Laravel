<?php

namespace App\Http\Controllers;

use App\Models\Role;
use Illuminate\Http\Request;

class RoleController extends Controller
{
    public function index()
    {
        // $roles = Role::all()->toArray(); //Assending order
        $roles = Role::latest()->get(); //Descending order
        // dd($roles);
        return view('admin.role.manage', compact('roles'));
    }
    public function create()
    {
        return view('admin.role.create');
    }
    public function edit($id)
    {
        return view('admin.role.update');
    }
    public function show()
    {
        return view('admin.role.details');
    }
}
