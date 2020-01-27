@extends('main')

@section('title', 'Результаты поиска')

@section('extra-css')
    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
@endsection

@section('content')

    <div class="search-results-container container" style="padding-bottom: 60px; padding-top: 60px;">
        <h3>Результаты поиска</h3>
        <p class="search-results-count" style="padding-bottom: 60px;">Вы искали '{{ request()->input('query') }}'</p>

        <div class="col-lg-9  order-1 order-lg-2 mb-5 mb-lg-0" style="padding-bottom: 60px;">
            <div class="row">
                @foreach ($products as $product)
                    <div class="col-lg-4 col-sm-6">
                        <div class="product-item">
                            <div class="pi-pic">
                                <a href="{{ route('shop.show', $product->slug) }}"><img src="{{ productImage($product->image) }}" alt="product" height="200px"></a>
                                <div class="pi-links">
                                  <form action="{{ route('cart.store', $product) }}" method="POST">
                    		            {{ csrf_field() }}
                    		            <button style="all: unset;"><a class="add-card"><i class="flaticon-bag"></i><span style="font-size: 7px;">добавить в корзину</span></a>
                    	          	</form>
                                </div>
                            </div>
                            <div class="pi-text">
                                <h6>{{ $product->presentPrice() }}</h6>
                                <a href="{{ route('shop.show', $product->slug) }}"><p>{{ $product->name }}</p></a>

                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>

        {{ $products->appends(request()->input())->links() }}
    </div> <!-- end search-results-container -->

@endsection
