@extends('main')
@section('content')
	<!-- Hero section -->
	<section class="hero-section">
		<div class="hero-slider owl-carousel">
			<div class="hs-item set-bg" data-setbg="img/bg_1.jpg">
				<div class="container">
					<div class="row">
						<div class="col-xl-6 col-lg-7">
							<span>НОВОЕ ПОСТУПЛЕНИЕ</span>
							<h2 style="color: #CA2B35;">НАСОСЫ SEAKOO</h2>
							<p style="color: #000000; word-spacing: 18px;"> Ваш Выгодный Выбор </p>
						</div>
					</div>
				</div>

			</div>
			<div class="hs-item set-bg" data-setbg="img/bg_2.jpg">
				<div class="container">
					<div class="row">
						<div class="col-xl-6 col-lg-7">
							<h2>Скважинный насос</h2>
							<p style="color: #000000;">Применение  насосов в области : Орошения ферм, водоснабжения, горнодобывающей, дренажей и в индустрии разведения животных!</p>
							<a href="/shop" class="site-btn sb-line" style="background: #97b1e6; color: #CA2B35;">Перейти в каталог</a>
						</div>
					</div>
					<div class="offer-card text-white"  style="background: #CA2B35;">
						<span>от</span>
						<h3>29 820 ₸</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="slide-num-holder" id="snh-1"></div>
		</div>
	</section>
	<!-- Hero section end -->


	<!-- letest product section -->
	<section class="top-letest-product-section">
		<div class="container">
			<div class="section-title">
				<h2>Популярные товары</h2>
			</div>
			<div class="product-slider owl-carousel">
				@forelse ($products as $product)
				<div class="product-item">
					<div class="pi-pic">
						<a href="{{ route('shop.show', $product->slug) }}"><img src="{{ productImage($product->image) }}" alt="product" class="landing-img"></a>
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
				@empty
          <div style="text-align: left">Товары отсутсвуют</div>
        @endforelse
			</div>
		</div>
	</section>
	<!-- letest product section end -->



  @endsection
