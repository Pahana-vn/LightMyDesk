<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Account;
use Illuminate\Http\Request;

class AccountBEController extends Controller
{
    function index()
    {
        $data = Account::get();
        return view('backend.account.index', ['account' => $data]);
    }
}
