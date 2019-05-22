@extends('layouts.base')

@section('content')
    <div class="flex-center position-ref full-height">
        <div class="content" style="color:white">
            <div>
                <h3>Show do SEMINALHÃO</h3>
                <h4><b>Atualizar Respostas</b></h4>
            </div>

            {!! Form::model($r, ['method'=>'PATCH', 'action'=>['RespostaController@update', $r->id], 'class'=>'form-horizontal']) !!}
                
                <select name="id_pergunta" class="form-control">

                    @foreach ($perguntas as $p)
                        @if ($r->id_pergunta == $p->id) <!-- Relaciona o id_pergunta da tabela respostas com o id da tabela perguntas -->
                            <option value="{{ $r->id_pergunta }}">{{ $r->id_pergunta }} - {{ $p->descricao }}</option>
                        @endif
                    @endforeach

                </select>

                <textarea rows="2" cols="80" name="resposta1" class="form-control">{{$r->resposta1}}</textarea>
                <textarea rows="2" cols="80" name="resposta2" class="form-control">{{$r->resposta2}}</textarea>
                <textarea rows="2" cols="80" name="resposta3" class="form-control">{{$r->resposta3}}</textarea>
                <textarea rows="2" cols="80" name="resposta4" class="form-control">{{$r->resposta4}}</textarea>
                
                <label class="form-label">Resposta correta:</label>
                {!! Form::select('correta', [ '1' => '1', 
                                              '2' => '2', 
                                              '3' => '3', 
                                              '4' => '4', 
                                            ], null, ['class' => 'form-control']) 
                !!}
                <br>
                
                <input type="submit" value="ATUALIZAR RESPOSTAS" class="btn btn-warning">
                
            {!! Form::close() !!}

        </div>
    </div>
@endsection