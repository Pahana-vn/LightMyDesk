<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Account;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class AccountBEController extends Controller
{
    function index()
    {
        $data = Account::get();
        return view('backend.account.index', ['account' => $data]);
    }
    function add(Request $request)
    {
        if ($request->isMethod("post")) {
            $this->validate($request, [
                "username" => "required",
                "address" => "required",
                "fullname" => "required",
                "phone" => "required",
                "role" => "required",
            ]);
            //lay gia tri nguoi dung nhap vao cac o
            $ac = new Account();
            $ac->username = $request->username;
            $ac->address = $request->address;
            $ac->email = $request->email;
            $ac->password = bcrypt($request->password);
            $ac->fullname = $request->fullname;
            $ac->phone = $request->phone;
            $ac->phone = $request->phone;
            $ac->role = $request->role;
            // print_r ($ac);
            $ac->save();
            Session::flash("note", "Add Success");
            return redirect()->route("be.account");
        } else {
            return view("backend.account.add");
        }
    }
    function update(Request $request, $id)
    {
        $data['load'] = Account::find($id);

        if ($request->isMethod("post")) {
            //cap nhat du lieu
            $this->validate($request, [
                "username" => "required",
                "address" => "required",
                "fullname" => "required",
                "phone" => "required",
                "role" => "required",
            ]);
            $ac2 = Account::find($id);
            $ac2->username = $request->username;
            $ac2->address = $request->address;
            $ac2->password = bcrypt($request->password);
            $ac2->fullname = $request->fullname;
            $ac2->phone = $request->phone;
            $ac2->phone = $request->phone;
            $ac2->role = $request->role;
            $ac2->status = $request->status;
            $ac2->save();
            Session::flash("note", "Update success!");
            return redirect()->route("be.account");
        } else {
            return view("backend.account.update", $data);
        }
    }
    function del($id)
    {
        Account::destroy($id);
        Session::flash('note', 'Delete successfully! ');
        return redirect()->route('be.account');
    }
}
