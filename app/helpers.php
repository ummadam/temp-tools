<?php

use Carbon\Carbon;

function presentPrice($price)
{
    
     return number_format($price , 0, '.', ' '). ' ₸' ;
    // else return number_format(0, 0, ' '). ' ₸';
}

function presentDate($date)
{
    return Carbon::parse($date)->format('d.m.Y');
}

function setActiveCategory($category, $output = 'active')
{
    return request()->category == $category ? $output : '';
}

function productImage($path)
{
    return $path && file_exists('storage/'.$path) ? asset('storage/'.$path) : asset('img/not-found.jpg');
}

function getNumbers()
{
    $tax = config('cart.tax') / 100;
    $discount = session()->get('coupon')['discount'] ?? 0;
    $code = session()->get('coupon')['name'] ?? null;
    $newSubtotal = (Cart::subtotal() - $discount);
    if ($newSubtotal < 0) {
        $newSubtotal = 0;
    }
    $newTax = $newSubtotal * $tax;
    $newTotal = $newSubtotal * (1 + $tax);

    return collect([
        'tax' => $tax,
        'discount' => $discount,
        'code' => $code,
        'newSubtotal' => $newSubtotal,
        'newTax' => $newTax,
        'newTotal' => $newTotal,
    ]);
}

function getStockLevel($quantity)
{
    if ($quantity > setting('site.stock_threshold', 5)) {
        $stockLevel = '<div class="badge badge-success">В наличии</div>';
    } elseif ($quantity <= setting('site.stock_threshold', 5) && $quantity > 0) {
        $stockLevel = '<div class="badge badge-warning">Мало в наличии</div>';
    } else {
        $stockLevel = '<div class="badge badge-danger">Нет в наличии</div>';
    }

    return $stockLevel;
}

function isActive(bool $boolean, bool $withClass = true)
{
    if ($boolean) {
        echo ($withClass) ? 'class="is-active"' : ' is-active';
    }
}
