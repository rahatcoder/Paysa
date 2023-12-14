<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Carbon\Carbon;
use Session;
use Auth;

class ArchiveController extends Controller{
    public function __construct(){
      $this->middleware('auth');
    }

    public function index(){
      return view('admin.archive.index');
    }

    public function month($month){
      $month_name=$month;
      return view('admin.archive.month',compact('month_name'));
    }
}
