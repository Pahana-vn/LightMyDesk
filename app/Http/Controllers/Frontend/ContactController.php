<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class ContactController extends Controller
{
    function contact()
    {
        return view('frontend.pages.contact');
    }
    function add(Request $request)
    {
        if ($request->isMethod("post")) {
            $this->validate($request, [
                "name" => "required",
                "email" => "required",
                "title" => "required",
                "phone" => "required",
                "desc" => "required",

            ]);
            //lay gia tri nguoi dung nhap vao cac o
            $cont = new Contact();
            $cont->name = $request->name;
            $cont->email = $request->email;
            $cont->title = $request->title;
            $cont->phone = $request->phone;
            $cont->desc = $request->desc;
            // $cont->created_at = $request->created_at;
            // $cont->updated_at = $request->updated_at;
            $cont->save();
            Session::flash("note", "Send Success");
            return redirect()->route("fe.contact");
        } else {
            return view("frontend.pages.contact");
        }
    }
}
