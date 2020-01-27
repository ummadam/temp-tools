@extends('layout')
@section('title', 'Забыли пароль')
@section('content')
<div class="container">
    <div class="auth-pages">
        <div class="auth-left">
            @if (session()->has('status'))
            <div class="alert alert-success">
                {{ session()->get('status') }}
            </div>
            @endif @if(count($errors) > 0)
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @endif
            <h2>Забыли пароль?</h2>
            <div class="spacer"></div>
            <form action="{{ route('password.email') }}" method="POST">
                {{ csrf_field() }}
                <input type="email" id="email" name="email" value="{{ old('email') }}" placeholder="Email" required autofocus>
                <div class="login-container">
                    <button type="submit" class="auth-button">Отправить ссылку для востановления пароля</button>
                </div>


            </form>
        </div>
        <div class="auth-right">
            <h2>Востановление пароля</h2>
            <div class="spacer"></div>
            <p>Вам на почту придет пароль</p>
            <div class="spacer"></div>
            <p></p>
        </div>
    </div>
</div>
@endsection
