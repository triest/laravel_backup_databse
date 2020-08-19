@extends('layouts.welcome', ['title' => 'Управление анкетой'])

@section('content')


    <form action="{{route('store')}}" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}

        <div class="form-group">
            <h4>
                Введите данные пля подключения
            </h4>

            <label for="title">Хостинг:</label>
            <input type="text" class="form-control" id="host" name="host" placeholder="Хост" required>
            @if($errors->has('host'))
                <font color="red"><p>  {{$errors->first('host')}}</p></font>
            @endif
        </div>

        <div class="form-group">

            <label for="title">Имя базы:</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Имя"
                   required>
            @if($errors->has('name'))
                <font color="red"><p>  {{$errors->first('name')}}</p></font>
            @endif
        </div>
        <div class="form-group">
            <label for="title">Пользователь:</label>
            <input type="text" class="form-control" id="user" name="user" placeholder="Пользователь"
                   required>
            @if($errors->has('user'))
                <font color="red"><p>  {{$errors->first('user')}}</p></font>
            @endif
        </div>
        <div class="form-group">
            <label for="title">Пароль:</label>
            <input type="text" class="form-control" id="password" name="password" placeholder="Пароль">
            @if($errors->has('password'))
                <font color="red"><p>  {{$errors->first('password')}}</p></font>
            @endif
        </div>

        <button type="submit" class="btn btn-primary">Запустить</button>
    </form>


@endsection