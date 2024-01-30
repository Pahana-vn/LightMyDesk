<?php

namespace App\Http\Controllers;

use App\Models\Rating;
use Illuminate\Http\Request;

class RatingController extends Controller
{
    public  function store(Request $request){
        $rating = new Rating();
        $rating->name = $request->name;
        $rating->email = $request->email;
        $rating->title = $request->title;
        $rating->content = $request->content;
        $rating->rating = $request->rating;
        $rating->product_id = (integer)$request->product_id;
        $rating->type = $request->type;
        $rating->blog_id = $request->blog_id;
        $rating->save();
        return redirect()->back();
    }
}
