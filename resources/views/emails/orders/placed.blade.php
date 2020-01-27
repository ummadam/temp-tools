@component('mail::message')
# Заказ принят

Спасибо Вам за ваш заказ.

**Заказ №:** {{ $order->id }}

**Email:** {{ $order->billing_email }}

**Имя:** {{ $order->billing_name }}

**Сумма заказа:** {{ presentPrice($order->billing_total) }}

**Ваш заказ: **

@foreach ($order->products as $product)
Название: {{ $product->name }} <br>
Цена: {{ $product->presentPrice()}} <br>
Количество: {{ $product->pivot->quantity }} <br>
@endforeach

Вы можете получить больше информации по ссылке ниже.

@component('mail::button', ['url' => 'http://seakoo-pumps.kz/my-orders/', 'color' => 'green'])
Мои заказы
@endcomponent

Спасибо еще раз за Ваш выбор.

С наилучшими пожеланиями,<br>
Seakoo-pumps.kz
@endcomponent
