<?php

namespace App\Http\Controllers;

use App\Models\Role;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // $roles = Role::all();
        // $roles = DB::table('roles')->get();
        // $roles = DB::table('roles')->paginate(2);
        // $roles = DB::table('roles')->where('name', 'admin')->first();
        // $roles = DB::table('roles')->orderBy('name', 'asc')->get();
        // $roles = DB::table('users')->latest()->get();
        // $roles = DB::table('roles')->offset(2)->limit(2)->get();
        // $roles = DB::table('roles')->skip(2)->take(2)->get();
        // $roles = DB::table('roles')->forPage(2, 2)->get();
        // $roles = DB::table('products')->avg('price');
        // $roles = DB::table('products')->max('price');
        // $roles = DB::table('products')->select('name','price')->get();
        // $roles = DB::table('products as p')
        //         ->join('categories as c', 'p.category_id', '=', 'c.id')
        //         ->join('brands as b', 'p.brand_id', '=', 'b.id')
        //         ->select('p.name','c.name as category','b.name as brand','price')
        //         ->get();
        // $roles = DB::table('roles as r')
        //     ->join('users as u', 'u.role_id', '=', 'r.id')
        //     ->select('r.name as role',
        //         DB::raw('COUNT(u.id) as number_of_user')
        //     )
        //     ->groupBy('r.id', 'r.name')
        //     ->get();
        $roles = DB::table('roles as r')
                ->join('users as u', 'u.role_id', '=', 'r.id')
                ->select('r.name as role')
                ->selectRaw('COUNT(u.id) as number_of_user')
                ->groupBy('role')
                ->get();

        dd($roles);

        return view('admin.pages.role.index', ['roles' => $roles]);

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Role $role)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Role $role)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Role $role)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Role $role)
    {
        //
    }
}
