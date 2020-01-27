<!-- Header section -->
<header class="header-section">
  <div class="header-top">
    <div class="container">
      <div class="row">
        <div class="col-lg-2 text-center text-lg-left">
          <!-- logo -->
          <a href="./" class="site-logo">
            <img src="http://seakoo.net/bocweb/web/img/img1.png?v=v3" >
          </a>
        </div>
        <div class="col-xl-6 col-lg-5">

          <form class="header-search-form" action="{{ route('search') }}" method="GET">
            <input type="text" placeholder="Поиск товара" name="query" id="query" value="{{ request()->input('query') }}" required>
            <button><i class="flaticon-search"></i></button>
          </form>

          <div class="nav-info">
            <span>Мобильный: +7 (707) 220-95-76</span> <span class="new_line">Городской: +7 (727) 220-95-76</span>
          </div>
          <div class="nav-info">
            <p class="margin-p">Сервис центр: +7 (775) 540-00-04</p>
          </div>
        </div>
        <div class="col-xl-4 col-lg-5">
          <div class="user-panel">
            <div class="up-item">
              <i class="flaticon-profile"></i>

              @guest
              <a href="{{ route('login') }}">ВОЙТИ</a> || <a href="{{ route('register') }}">РЕГИСТРАЦИЯ</a>
              @else
              <a href="{{ route('users.edit') }}">ЛИЧНЫЙ КАБИНЕТ</a> ||
              <a href="{{ route('logout') }}"
                      onclick="event.preventDefault();
                              document.getElementById('logout-form').submit();">
                      ВЫЙТИ
                  </a>
              <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                  {{ csrf_field() }}
              </form>
              @endguest
            </div>
            <div class="up-item">
              <div class="shopping-card">
                <i class="flaticon-bag"></i>
                @if (Cart::instance('default')->count() > 0)
                <span>{{ Cart::instance('default')->count() }}</span>
                @else
                <span>0</span>
                @endif
              </div>
              <a href="{{ route('cart.index') }}"> КОРЗИНА </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <nav class="main-navbar">
    <div class="container">
      <ul class="main-menu">
        <li><a href="/">ГЛАВНАЯ</a></li>
        <li><a href="/shop">КАТАЛОГ</a></li>
        <li><a href="/about">О КОМПАНИИ</a></li>
        <li><a href="/news">НОВОСТИ</a></li>
        <li><a href="/contacts">КОНТАКТЫ</a></li>
        <li><a href="/delivery">ДОСТАВКА И ОПЛАТА</a></li>
      </ul>
    </div>
  </nav>
</header>
