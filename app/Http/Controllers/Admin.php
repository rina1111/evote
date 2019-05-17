<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\data_rt;
use App\paslon_rt;
use App\paslon_rw;
use Alert;
use DB;
class Admin extends Controller
{
  public function adminindex()
  {
    return view ('admin/index');
  }
    public function index()
    {
      $data=data_rt::all();
      return view ('admin/datart',['data'=>$data]);
    }

    public function store(Request $request)
    {
      $data=new data_rt();
      $data->rt=$request->get('rt');
      $data->rw=$request->get('rw');
      $data->kelurahan=$request->get('kelurahan');
      $data->kecamatan=$request->get('kecamatan');
      if($data->save()){
       alert()->success('You have been logged out.', 'Good bye!');
          return redirect ('admin/datart')->with('success');
      }

    }
    public function edit($id)
    {
      $datart=data_rt::find($id);
      $data=data_rt::all();

      return view('admin/edit_rt',['datart'=>$datart,'data'=>$data]);
    }
    public function update_rt(Request $request,$id)
    {
      $datart= data_rt::find($id);
    	$datart->update($request->all());
    	return redirect('admin/datart')->with('success','Data telah terupdate');
    }
    public function delete_rt($id)
    {
      $rt=DB::table('data_rts')->where('id',$id)->delete();
        return redirect ('admin/datart');
    }

    public function kandidat()
    {
      $paslonrt=DB::table('paslonrts')
    ->join('data_rts','data_rts.id','=','paslonrts.rt_id')->get();
      $data=data_rt::all();
      $paslonrw=paslon_rw::all();
      return view ('admin/kandidat',['data'=>$data,'paslonrt'=>$paslonrt,'paslonrw'=>$paslonrw]);
    }

    public function create_paslon_rt(Request $request)
    {
      $paslonrt=new paslon_rt();
      $paslonrt->nm_rt=$request->get('nm_rt');
        $paslonrt->no_paslon=$request->get('no_paslon');
          $paslonrt->rt_id=$request->get('rt_id');
            $paslonrt->pekerjaan=$request->get('pekerjaan');
              $paslonrt->agama=$request->get('agama');
                $paslonrt->umur=$request->get('umur');
                  $paslonrt->alamat=$request->get('alamat');
                  if($request -> file('gambar')){
                   $file = $request->file('gambar')->store('avatar', 'public');
                   $paslonrt->gambar = $file;
                  }
                  if($paslonrt->save()){
                   alert()->success('You have been logged out.', 'Good bye!');
                      return redirect ('admin/kandidat')->with('success');
                  }

    }

    public function create_paslon_rw(Request $request)
    {
      $paslonrw=new paslon_rw();
      $paslonrw->nm_rw=$request->get('nm_rw');
        $paslonrw->no_paslon=$request->get('no_paslon');
          $paslonrw->rw=$request->get('rw');
            $paslonrw->pekerjaan=$request->get('pekerjaan');
              $paslonrw->agama=$request->get('agama');
                $paslonrw->umur=$request->get('umur');
                  $paslonrw->alamat=$request->get('alamat');
                  if($request -> file('foto')){
                   $file = $request->file('foto')->store('avatar', 'public');
                   $paslonrw->foto = $file;
                  }
                  if($paslonrw->save()){
                   alert()->success('You have been logged out.', 'Good bye!');
                      return redirect ('admin/kandidat')->with('success');
                  }

    }


}
