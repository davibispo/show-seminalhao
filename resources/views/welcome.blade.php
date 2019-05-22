@extends('layouts.base')

@section('content')

<div class="flex-center position-ref full-height">
    <div class="content">
        <div class="title m-b-md" style="color:white">
            Show do <b>SEMINA</b>LHÃO
        </div>

        <div>
            <a class="btn btn-primary" href="{{ route('site.index') }}" accesskey="i" data-toggle="tooltip" title="Alt + i">INICIAR <i class="fas fa-play"></i></a><br><br>
            <a class="link" href="{{ route('perguntas.create') }}"><i style="color:darkcyan">Perguntas</i></a>
            <a class="link" href="{{ route('site.ranking') }}" accesskey="r" data-toggle="tooltip" title="Alt + r"><i style="color:darkcyan">Ranking</i></a>
        </div>
    </div>
</div>

@endsection
