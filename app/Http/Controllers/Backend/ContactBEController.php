<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Contact;
use Illuminate\Http\Request;

class ContactBEController extends Controller
{
    function index()
    {
        $data = Contact::get();
        return view('backend.contact.index', ['contact' => $data]);
    }
}
