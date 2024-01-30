<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductFeController extends Controller
{
    function index()
    {
        $data['prt'] = Product::where('status', '1')->paginate(6);
        $data['category'] = Category::where('status', 1)->get();
        $data['ngaunhien'] = Product::inRandomOrder()->limit(3)->get();
        return view('frontend.pages.product', $data);
    }
}
