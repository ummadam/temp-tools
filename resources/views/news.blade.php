@extends('layout')

@section('title', 'Новости')

@section('extra-css')
    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
@endsection

@section('content')

    @component('components.breadcrumbs')
        <a href="/">Главная</a>
        <i class="fa fa-chevron-right breadcrumb-separator"></i>
        <span>Новости</span>
    @endcomponent

    <div class="container">
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
    </div>
    <br>
    <div class="container">
        <h1 class="text-center">Новостей пока нет</h1>
    </div>


@endsection

@section('extra-js')
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection