@extends('layouts.base')

@section('content')
    <div class="flex-center position-ref full-height">
        <div class="content" style="color:white">
            <div>
                <h3>Show do SEMINALHÃO</h3>
                <h4><b>Atualizar Pergunta</b></h4>
            </div>

            {!! Form::model($p, ['method'=>'PATCH', 'action'=>['PerguntaController@update', $p->id], 'class'=>'form-horizontal']) !!}
                
                <textarea rows="5" cols="80" name="descricao" class="form-control">{{$p->descricao}}</textarea>

                <label for="tipo" class="form-label">Tipo</label>
                {!! Form::select('tipo', [ '1' => '1 - Doutrina e Convênios', 
                                            '2' => '2 - Livro de Mórmon', 
                                            '3' => '3 - Novo Testamento', 
                                            '4' => '4 - Velho Testamento', 
                                            '5' => '5 - Diversidades' 
                                        ], null, ['class' => 'form-control']) !!}

                <label for="nivel" class="form-label">Nível de Dificuldade</label>
                {!! Form::select('nivel', [ '1' => '1', '2' => '2', '3' => '3' ], null, ['class' => 'form-control']) !!}
                
                <label for="status" class="form-label">Status de respondida</label>
                <input type="text" name="status" value="{{$p->status}}" class="form-control">

                <br>
                <input type="submit" value="ATUALIZAR PERGUNTA" class="btn btn-warning">
                
            {!! Form::close() !!}

        </div>
    </div>
@endsection