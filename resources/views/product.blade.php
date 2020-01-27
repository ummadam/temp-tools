@extends('main')

@section('title', $product->name)
<link rel="stylesheet" href="{{ asset('main_style/css/animate.css') }}">
<link rel="stylesheet" href="{{ asset('main_style/css/owl.carousel.min.css') }}">
<link rel="stylesheet" href="{{ asset('main_style/css/jquery-ui.min.css') }}">
<link rel="stylesheet" href="{{ asset('main_style/css/slicknav.min.css') }}">
<link rel="stylesheet" href="{{ asset('main_style/css/flaticon.css') }}">
<link rel="stylesheet" href="{{ asset('main_style/css/font-awesome.min.css') }}">
<link rel="stylesheet" href="{{ asset('main_style/css/bootstrap.min.css') }}">
<link rel="stylesheet" href="{{ asset('main_style/css/style.css') }}">
<style media="screen">
	.reviews-item-info-rating-stars-list {
		list-style: none;
		padding: 0;
		margin: 0;
	}
	.reviews-item-info-rating-stars-list-item {
		display: inline-block;
	}

	.reviews-item-info-rating-stars-list-item i {
		color: #D8D8D8;
	}

	.reviews-item-info-rating-stars-list-item.is-active i {
		color: #F8E71C;
	}
</style>

@section('content')
	<!-- product section -->
	<section class="product-section">
		<div class="container">
			<div class="back-link">
				<a href="/shop"> &lt;&lt; Назад в каталог</a>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="product-pic-zoom">
						<img src="{{ productImage($product->image) }}" alt="product" class="active" id="currentImage">
					</div>
					<div class="product-thumbs" tabindex="1" style="overflow: hidden; outline: none;">
						<div class="product-thumbs-track">
							<img src="{{ productImage($product->image) }}" alt="product" height="120px">
						</div>
					</div>
				</div>
				<div class="col-lg-6 product-details">
					<h2 class="p-title">{{ $product->name }}</h2>
					<h3 class="p-price">{{ $product->presentPrice() }}</h3>
					<div class="p-rating">
						@if($product->reviews()->count())
							<ul class="reviews-item-info-rating-stars-list">
								@for($i = 0; $i < 5; $i++)
									<li class="reviews-item-info-rating-stars-list-item {{ isActive($product->reviews->avg('rating') > $i, false) }}">
										<i class="fa fa-star"></i>
									</li>
								@endfor
							</ul>
						@endif
					</div>
					<div class="p-review">
						@if($product->reviews()->count())
							{{  $product->reviews()->count() }} отзывов | <a href="">Добавить отзыв</a>
						@else
							Пока нет отзывов
						@endif
					</div>
					<div class="quantity">
						<p>Количество</p>
						<div class="pro-qty"><input type="number" value="1"></div>
					</div>
					<form action="{{ route('cart.store', $product) }}" method="POST">
						{{ csrf_field() }}
						<input type="hidden" value="1" name="qty" id="hidden-qty"/>
						<button class="site-btn">Добавить в корзину</button>
					</form>
					<div id="accordion" class="accordion-area">
						<div class="panel">
							<div class="panel-header" id="headingOne">
								<button class="panel-link active" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapse1">описание</button>
							</div>
							<div id="collapse1" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
								<div class="panel-body">
									<p>{!! $product->description !!}</p>
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="panel-header" id="headingTwo">
								<button class="panel-link" data-toggle="collapse" data-target="#collapse2" aria-expanded="false" aria-controls="collapse2">характерестики </button>
							</div>
							<div id="collapse2" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
								<div class="panel-body">
									@if($specs)
										@foreach($specs as $spec)
											@foreach($spec as $_spec)
												<p>{{ $_spec->name }}:&nbsp;
													@foreach($product_specs as $product_spec)
														@if($product_spec->specification_id === $_spec->id)
															{{ $product_spec->value }}
														@endif
													@endforeach
												</p>
											@endforeach
										@endforeach
								</div>
								@endif
							</div>
						</div>
					</div>

				</div>
			</div>

		<!-- @if($product->reviews()->where('user_id', auth()->id())->count())
			You've got a review
@else
			<div class="reviews">
            <h3>Leave a review</h3>
            <form action="{{ route('review.store')}}" method="POST">
        @csrf
					<input type="hidden" name="product_id" value="{{ $product->id }}"/>
        Your rating:
        <br/>
        <select name="rating">
        <option >1</option>
        <option >2</option>
        <option >3</option>
        <option selected>4</option>
        <option>5</option>
        </select>
        <br/><br/>
        Comment(optional):
        <br/>
        <textarea name="comment" ></textarea>
        <br/><br/>
        <input type="submit" value="Save rating"/>

    </form>
    </div>
    @endif -->
		</div>
		</div>
	</section>
	<!-- product section end -->


	@include('partials.might-like')

	<script src="{{ asset('main_style/js/jquery-3.2.1.min.js') }}"></script>
	<script src="{{ asset('main_style/js/bootstrap.min.js') }}"></script>
	<script src="{{ asset('main_style/js/jquery.slicknav.min.js') }}"></script>
	<script src="{{ asset('main_style/js/owl.carousel.min.js') }}"></script>
	<script src="{{ asset('main_style/js/jquery.nicescroll.min.js') }}"></script>
	<script src="{{ asset('main_style/js/jquery-ui.min.js') }}"></script>
	<script src="{{ asset('main_style/js/main.js') }}"></script>

@endsection
