@extends('layouts.welcome', ['title' => 'Управление анкетой'])

@section('content')

    База данных {{$database->name}} скопированна! <br>
    <a href="{{$database->filename}}" download="{{$database->filename}}" target="_blank">Ссылка для скачивания</a>
@endsection