<?php

namespace App\Http\Controllers;

use App\Product;
use App\Review;
use Illuminate\Http\Request;

class ReviewController extends Controller
{


    public function store(Request $request)
    {

        Review::create($request->all()+['user_id'=>auth()->id()]);
        return back()->with($request->product_id);
    }




}
