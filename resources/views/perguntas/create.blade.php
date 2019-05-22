@extends('layouts.base')

@section('content')
    <div class="flex-center position-ref full-height">
        <div class="content">
            <div style="color:white">
                <h3>Show do SEMINALHÃO</h3>
                <h4><b>Perguntas</b></h4>
            </div>

            {!! Form::open(['method'=>'POST', 'action'=>'PerguntaController@store', 'class'=>'form-horizontal']) !!}

                <textarea rows="5" cols="80" name="descricao" class="form-control" placeholder="Digite a pergunta.." required></textarea>

                <select name="nivel" class="form-control" required>
                    <option value="1">Nível 1</option>
                    <option value="2">Nível 2</option>
                    <option value="3">Nível 3</option>
                </select>
                <select name="tipo" class="form-control" required>
                    <option value="1">1 - Doutrina e Convênios</option>
                    <option value="2">2 - Livro de Mórmon</option>
                    <option value="3">3 - Novo Testamento</option>
                    <option value="4">4 - Velho Testamento</option>
                    <option value="5">5 - Diversidades</option>
                </select>
                <br>

                <input type="submit" value="CADASTRAR PERGUNTA" class="btn btn-success">

            {!! Form::close() !!}

            <div style="margin-top: 20px">
                <a class="link" href="{{ route('welcome') }}">Home</a>
                <a class="link" href="{{ route('site.zerar-status') }}" data-toggle="tooltip" title="Disponibiliza todas as perguntas!">Zerar status</a>
                <a class="link" href="{{ route('respostas.create') }}">Respostas</a>
            </div>
            <br>
            <div class="container" style="overflow:auto; height: 200px;">
                <ul class="list-group">
                    @foreach ($perguntas as $p)
                        <li class="list-group-item text-left">
                            (<i>t{{ $p->tipo }}</i>) {{ $p->id }} - {{ $p->descricao }} <a href="{{ route('perguntas.edit', $p->id) }}" class="badge badge-warning badge-pill"> Editar </a>
                        </li>
                    @endforeach
                </ul>
            </div>

        </div>
    </div>
@endsection
