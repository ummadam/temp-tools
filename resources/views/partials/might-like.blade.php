
<!-- letest product section -->
<section class="top-letest-product-section">
  <div class="container">
    <div class="section-title">
      <h2>Вас могут заинтересовать</h2>
    </div>
    <div class="product-slider owl-carousel">
      @forelse ($mightAlsoLike as $product)
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
