<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Like;
use Illuminate\Http\Request;

class LikeBEController extends Controller
{
    function index()
    {

        $data = Like::get();
        return view('backend.like.index', ['like' => $data]);
    }
}
