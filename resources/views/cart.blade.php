@extends('layout')

@section('title', 'Shopping Cart')
<link rel="stylesheet" href="{{ asset('main_style/css/animate.css') }}">
<link rel="stylesheet" href="{{ asset('main_style/css/owl.carousel.min.css') }}">
<link rel="stylesheet" href="{{ asset('main_style/css/jquery-ui.min.css') }}">
<link rel="stylesheet" href="{{ asset('main_style/css/slicknav.min.css') }}">
<link rel="stylesheet" href="{{ asset('main_style/css/flaticon.css') }}">
<link rel="stylesheet" href="{{ asset('main_style/css/font-awesome.min.css') }}">
<link rel="stylesheet" href="{{ asset('main_style/css/bootstrap.min.css') }}">
<link rel="stylesheet" href="{{ asset('main_style/css/style.css') }}">

@section('extra-css')
    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
@endsection

@section('content')

    <div class="cart-section container">
        <div>
            @if (session()->has('success_message'))
                <div class="alert alert-success">
                    {{ session()->get('success_message') }}
                </div>
            @endif

            @if(count($errors) > 0)
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            @if (Cart::count() > 0)

            <h2>{{ Cart::count() }} товар(ов) в корзине</h2>

            <div class="cart-table">
                @foreach (Cart::content() as $item)


                <div class="cart-table-row">
                    <div class="cart-table-row-left">
                        <a href="{{ route('shop.show', $item->model->slug) }}"><img src="{{ productImage($item->model->image) }}" alt="item" class="cart-table-img"></a>
                        <div class="cart-item-details">
                            <div class="cart-table-item"><a href="{{ route('shop.show', $item->model->slug) }}">{{ $item->model->name }}</a></div>
                            <div class="cart-table-description">{{ $item->model->details }}</div>
                        </div>
                    </div>
                    <div class="cart-table-row-right">
                        <div class="cart-table-actions">
                            <form action="{{ route('cart.destroy', $item->rowId) }}" method="POST">
                                {{ csrf_field() }}
                                {{ method_field('DELETE') }}

                                <button type="submit" class="cart-options">Удалить</button>
                            </form>

                            <form action="{{ route('cart.switchToSaveForLater', $item->rowId) }}" method="POST">
                                {{ csrf_field() }}

                                <button type="submit" class="cart-options">Сохранить на потом</button>
                            </form>
                        </div>
                        <div>

                            <select class="quantity" data-id="{{ $item->rowId }}" data-productQuantity="{{ $item->model->quantity }}">
                                @for ($i = 1; $i < 5 + 1 ; $i++)
                                    <option {{ $item->qty == $i ? 'selected' : '' }}>{{ $i }}</option>
                                @endfor
                            </select>
                        </div>

                        <div>{{ $item->model->presentPrice() }}</div>
                    </div>
                </div> <!-- end cart-table-row -->
                @endforeach

            </div> <!-- end cart-table -->
            <!--
            @if (! session()->has('coupon'))

                <a href="#" class="have-code">Have a Code?</a>

                <div class="have-code-container">
                    <form action="{{ route('coupon.store') }}" method="POST">
                        {{ csrf_field() }}
                        <input type="text" name="coupon_code" id="coupon_code">
                        <button type="submit" class="button button-plain">Apply</button>
                    </form>
                </div>
            @endif -->

            <div class="cart-totals">
                <div class="cart-totals-left">
                    Доставка свыше 50000 тг бесплатна.
                </div>

                <div class="cart-totals-right">
                <!--    <div>
                        Subtotal <br>
                        @if (session()->has('coupon'))
                            Code ({{ session()->get('coupon')['name'] }})
                            <form action="{{ route('coupon.destroy') }}" method="POST" style="display:block">
                                {{ csrf_field() }}
                                {{ method_field('delete') }}
                                <button type="submit" style="font-size:14px;">Удалить</button>
                            </form>
                            <hr>
                            К оплате: <br>
                        @endif
                        Tax ({{config('cart.tax')}}%)<br>
                    </div> -->
                    <div class="cart-totals-subtotal">
                    <span class="cart-totals-total">К оплате: </span>
                        <!--{{ presentPrice(Cart::subtotal()) }} <br>
                        @if (session()->has('coupon'))
                            -{{ presentPrice($discount) }} <br>&nbsp;<br>
                            <hr>
                            {{ presentPrice($newSubtotal) }} <br>
                        @endif
                        {{ presentPrice($newTax) }} <br>-->

                        <span class="cart-totals-total">{{ presentPrice(Cart::subtotal()) }}</span>
                    </div>
                </div>
            </div> <!-- end cart-totals -->

            <div class="cart-buttons">
                <a href="{{ route('shop.index') }}" class="button">Продолжить покупки</a>
                <a href="{{ route('checkout.index') }}" class="button-primary">Оформить заказ</a>
            </div>

            @else

                <h3>Корзина пуста</h3>
                <div class="spacer"></div>
                <a href="{{ route('shop.index') }}" class="button">Продолжить покупки</a>
                <div class="spacer"></div>

            @endif

            @if (Cart::instance('saveForLater')->count() > 0)

            <h2>{{ Cart::instance('saveForLater')->count() }} товаров сохранено на потом</h2>

            <div class="saved-for-later cart-table">
                @foreach (Cart::instance('saveForLater')->content() as $item)
                <div class="cart-table-row">
                    <div class="cart-table-row-left">
                        <a href="{{ route('shop.show', $item->model->slug) }}"><img src="{{ asset('img/products/'.$item->model->slug.'.jpg') }}" alt="item" class="cart-table-img"></a>
                        <div class="cart-item-details">
                            <div class="cart-table-item"><a href="{{ route('shop.show', $item->model->slug) }}">{{ $item->model->name }}</a></div>
                            <div class="cart-table-description">{{ $item->model->details }}</div>
                        </div>
                    </div>
                    <div class="cart-table-row-right">
                        <div class="cart-table-actions">
                            <form action="{{ route('saveForLater.destroy', $item->rowId) }}" method="POST">
                                {{ csrf_field() }}
                                {{ method_field('DELETE') }}

                                <button type="submit" class="cart-options">Удалить</button>
                            </form>

                            <form action="{{ route('saveForLater.switchToCart', $item->rowId) }}" method="POST">
                                {{ csrf_field() }}

                                <button type="submit" class="cart-options">Добавить к корзине</button>
                            </form>
                        </div>

                        <div>{{ $item->model->presentPrice() }}</div>
                    </div>
                </div> <!-- end cart-table-row -->
                @endforeach

            </div> <!-- end saved-for-later -->

            @endif

        </div>

    </div> <!-- end cart-section -->

    @include('partials.might-like')


@endsection

@section('extra-js')
    <script src="{{ asset('js/app.js') }}"></script>
    <script>
        (function(){
            const classname = document.querySelectorAll('.quantity')

            Array.from(classname).forEach(function(element) {
                element.addEventListener('change', function() {
                    const id = element.getAttribute('data-id')
                    const productQuantity = element.getAttribute('data-productQuantity')

                    axios.patch(`/cart/${id}`, {
                        quantity: this.value,
                        productQuantity: productQuantity
                    })
                    .then(function (response) {
                        // console.log(response);
                        window.location.href = '{{ route('cart.index') }}'
                    })
                    .catch(function (error) {
                        // console.log(error);
                        window.location.href = '{{ route('cart.index') }}'
                    });
                })
            })
        })();
    </script>

    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="{{ asset('main_style/js/jquery-3.2.1.min.js') }}"></script>
	<script src="{{ asset('main_style/js/bootstrap.min.js') }}"></script>
	<script src="{{ asset('main_style/js/jquery.slicknav.min.js') }}"></script>
	<script src="{{ asset('main_style/js/owl.carousel.min.js') }}"></script>
	<script src="{{ asset('main_style/js/jquery.nicescroll.min.js') }}"></script>
	<script src="{{ asset('main_style/js/jquery-ui.min.js') }}"></script>
	<script src="{{ asset('main_style/js/main.js') }}"></script>
@endsection
