<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Job\Job;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $jobs = Job::select()->take(5)->orderBy('id', 'desc')->get();
        $totaljobs = Job::all()->count();

        return view('home', compact('jobs', 'totaljobs'));
    }



    public function about()
    {
       
        return view('pages.about');
    }


    public function contact()
    {
       
        return view('pages.contact');
    }




}
