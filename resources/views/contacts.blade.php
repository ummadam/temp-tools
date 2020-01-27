@extends('main')

@section('title', 'Контакты')
@section('content')


        <div class="row">
            <!-- Contact Section Begin -->

    {{-- <section class="contact-section spad" style="margin: 0 auto"> --}}
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6" style="padding-right:50px; margin-top:50px; margin-bottom:30px; text-align: center; font-family: Times New Roman; font-size: 1rem;">
                            <div class="contact-title">
                                <h4>Наши контакты</h4>

                            </div>
                            <div class="contact-widget">
                                <div class="cw-item">
                                    <div class="ci-icon">
                                        <i class="ti-location-pin"></i>
                                    </div>
                                    <div class="ci-text">
                                        <span>Адрес:</span>
                                        <p>Магазин LIGA-STORE пр.Суюнбая 215</p>
                                    </div>
                                </div>
                                <div class="cw-item">
                                    <div class="ci-icon">
                                        <i class="ti-mobile"></i>
                                    </div>
                                    <div class="ci-text">
                                        <span>Городской телефон:</span>
                                        <p>+7(727)220-95-76</p>
                                        <span>Мобильный телефон:</span>
                                        <p>+7(707)220-95-76</p>
                                        <span>Сервис центр:</span>
                                        <p>+7(775)540-00-04</p>
                                    </div>
                                </div>
                                <div class="cw-item">
                                    <div class="ci-icon">
                                        <i class="ti-email"></i>
                                    </div>
                                    <div class="ci-text">
                                        <span>Email:</span>
                                        <p>seakoo@inbox.ru</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6" style="margin-top: 50px; margin-bottom:30px;">
                            <div class="contact-form">
                                {{-- <div class="leave-comment"> --}}
                                    <a class="dg-widget-link" href="http://2gis.kz/almaty/firm/70000001028129003/center/76.956928,43.31549/zoom/16?utm_medium=widget-source&utm_campaign=firmsonmap&utm_source=bigMap">Посмотреть на карте Алматы</a>
                                    <div class="dg-widget-link"><a href="http://2gis.kz/almaty/center/76.956928,43.31549/zoom/16/routeTab/rsType/bus/to/76.956928,43.31549╎LigaStore, магазин?utm_medium=widget-source&utm_campaign=firmsonmap&utm_source=route">Найти проезд до LigaStore, магазин</a>
                                    </div><script charset="utf-8" src="https://widgets.2gis.com/js/DGWidgetLoader.js"></script><script charset="utf-8">new DGWidgetLoader({"width":"100%","height":50,"borderColor":"#a3a3a3","pos":{"lat":43.31549,"lon":76.956928,"zoom":16},"opt":{"city":"almaty"},"org":[{"id":"70000001028129003"}]});</script>
                                    <noscript style="color:#c00;font-size:16px;font-weight:bold;">Виджет карты использует JavaScript. Включите его в настройках вашего браузера.</noscript>

                                {{-- </div> --}}
                            </div>
                        </div>
                    </div>
                </div>
            {{-- </section> --}}

    <!-- Contact Section End -->
        </div>
    </div>
@endsection
