@extends('layouts.base')

@section('content')

<div class="flex-center position-ref full-height">
    <div class="content">
        <div class="title m-b-sm" style="color:white">
            {{ auth()->user()->name }} <br>
            parou com <b style="background-color:green; padding: 1px 8px 1px 8px; border-radius: 10px;">{{auth()->user()->pontuacao}}</b> pontos!
        </div>
        <div style="text-align:center">
            <a class="link" href="{{ route('welcome') }}" accesskey="x"><i>home</i></a>
        </div>
    </div>

    {{ Auth::logout() }}

</div>

@endsection
