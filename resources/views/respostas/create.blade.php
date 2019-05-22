@extends('layouts.base')

@section('content')
    <div class="flex-center position-ref full-height">
        <div class="content" style="color:white">
            <div>
                <h3>Show do SEMINALHÃO</h3>
                <h4><b>Respostas</b></h4>
            </div>

            {!! Form::open(['method'=>'POST', 'action'=>'RespostaController@store', 'class'=>'form-horizontal']) !!}

                <select name="id_pergunta" class="form-control">

                    @foreach ($perguntas as $p)
                        <option value="{{ $p->id }}">{{ $p->id }} - {{ $p->descricao }}</option>
                    @endforeach

                </select>

                <textarea rows="2" cols="80" name="resposta1" class="form-control" placeholder="Resposta 1.." required></textarea>
                <textarea rows="2" cols="80" name="resposta2" class="form-control" placeholder="Resposta 2.." required></textarea>
                <textarea rows="2" cols="80" name="resposta3" class="form-control" placeholder="Resposta 3.." required></textarea>
                <textarea rows="2" cols="80" name="resposta4" class="form-control" placeholder="Resposta 4.." required></textarea>

                <label class="form-label">Alternativa correta:</label>
                <select name="correta" class="form-control" required>
                    <option></option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                </select><br>

                <input type="submit" value="CADASTRAR RESPOSTAS" class="btn btn-success">

            {!! Form::close() !!}

            <div style="margin-top: 20px">
                <a class="link" href="{{ route('welcome') }}">Home</a>
                <a class="link" href="{{ route('perguntas.create') }}">Perguntas</a>
            </div>

            <br>
            <div class="container" style="overflow:auto; height: 100px;">
                <ul class="list-group">
                    @foreach ($perguntas as $p)
                        <li class="list-group-item text-left" style="color:black">
                            {{ $p->id }} - {{ $p->descricao }} <a href="{{ route('respostas.edit', $p->id) }}" class="badge badge-warning badge-pill"> Editar respostas </a>
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
    <br><br>
@endsection
