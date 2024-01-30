<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Http\Request;

class OrderBEController extends Controller
{
    function index()
    {
        $data = Order::get();
        return view('backend.order.index', ['order' => $data]);
    }
}
