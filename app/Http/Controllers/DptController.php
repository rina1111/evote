<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use App\User;
use DB;
class DptController extends Controller
{
        public function index()
    {
        return view('dpt/index');
    }

    public function pemilihan(){
      if(!session::get('logindpt')){
        return redirect('/dpt/login')->with('alert', 'You are not loged in!');
      }else {

      $kandidatrt=DB::table('paslonrts')->get();
            return view('dpt/pemilihan',['kandidatrt'=>$kandidatrt]);
        }
}
}
