@extends('layouts.base')

@section('content')
    <div class="flex-center position-ref full-height">

        <!-- Ação para Mostrar as alternativas -->
        <a href="#" onclick="mostrar_respostas(this);" id="mostra_pergunta" accesskey="c"></a><!--pergunta-->
        <a href="#" onclick="mostrar_respostas(this);" id="mostra_resposta1" accesskey="v"></a><!--alternativa 1-->
        <a href="#" onclick="mostrar_respostas(this);" id="mostra_resposta2" accesskey="b"></a><!--alternativa 2-->
        <a href="#" onclick="mostrar_respostas(this);" id="mostra_resposta3" accesskey="n"></a><!--alternativa 3-->
        <a href="#" onclick="mostrar_respostas(this);" id="mostra_resposta4" accesskey="m"></a><!--alternativa 4-->

        <div class="content">
            <div>
                <h2 style="color:white">
                    Você tem <b style="background-color:green; padding: 1px 8px 1px 8px; border-radius: 10px;">{{auth()->user()->pontuacao}}</b> pontos!
                </h2>
                <p><i style="color:white">Pergunta valendo <b>{{ $pontos }}</b> pontos:</i></p>
            </div>
            <div class="">
            {!! Form::open(['method'=>'POST', 'action'=>'SiteController@store', 'class'=>'form-horizontal']) !!}
                <table class="table" style="width: 700px; margin-left:auto; margin-right:auto;">
                    <tr>
                        <td colspan="3" class="design-pergunta">
                            <p id="div_pergunta" style="display:none;">
                                <b>{{ $pergunta }}</b>
                            </p>
                        </td>
                    </tr>
                    <tr style="text-align:left">
                        <td class="desgin-radio-resposta"><input type="radio" name="escolha" value="1" accesskey="1"></td>
                        <td class="design-resposta">
                            <p id="div_resposta1" style="display:none;">
                                <b class="design-alternativa-numero">1</b>
                                {{ $resposta1 }}
                            </p>
                        </td>
                    </tr>
                    <tr style="text-align:left">
                        <td class="desgin-radio-resposta"><input type="radio" name="escolha" value="2" accesskey="2"></td>
                        <td class="design-resposta">
                            <p id="div_resposta2" style="display:none;">
                                <b class="design-alternativa-numero">2</b>
                                {{ $resposta2 }}
                            </p>
                        </td>
                    </tr>
                    <tr style="text-align:left">
                        <td class="desgin-radio-resposta"><input type="radio" name="escolha" value="3" accesskey="3"></td>
                        <td class="design-resposta">
                            <p id="div_resposta3" style="display:none;">
                                <b class="design-alternativa-numero">3</b>
                                {{ $resposta3 }}
                            </p>
                        </td>
                    </tr>
                    <tr style="text-align:left">
                        <td class="desgin-radio-resposta"><input type="radio" name="escolha" value="4" accesskey="4"></td>
                        <td class="design-resposta">
                            <p id="div_resposta4" style="display:none;">
                                <b class="design-alternativa-numero">4</b>
                                {{ $resposta4 }}
                            </p>
                        </td>
                    </tr>
                </table>

                <input type="hidden" name="nivel" value="{{$nivel}}">
                <input type="hidden" name="id_pergunta" value="{{$idPergunta}}">

            </div>

            <div class="links">
                <table class="table">
                    <tr>
                        <td style="vertical-align:middle; color:yellow; font-size:20px;">
                            <input type="radio" name="escolha" value="5" accesskey="j" required>
                            <i class="fas fa-frog"></i>
                            <b>{{ $pulos }}</b><br>
                            <i style="font-size:15px;">pulo (J)</i>
                        </td>
                        <td style="vertical-align:middle; color:yellow; font-size:20px;">
                            <i class="fas fa-users"></i>
                            <b>{{ $ajudas }}</b><br>
                            <i style="font-size:15px;">ajuda (H)</i>
                        </td>
                        <td style="vertical-align:middle; color:yellow; font-size:20px;">
                            <a style="color:yellow" class="link" href="{{ route('site.stop') }}" accesskey="s" data-toggle="tooltip" title="Alt + s"><i class="fas fa-hand-paper"></i></a>
                            <br>
                            <i style="font-size:15px;">parar (S)</i>
                        </td>
                    </tr>
                </table>
            </div>

            <input type="submit" value="" class="btn btn-link" accesskey="r">
            <br>
            {!! Form::close() !!}
        </div>

        <!-- Tempo de contagem regressiva é iniciado com as teclas Alt + t -->
        <div id="numberCountdown" style="color:yellow; font-size:45px; margin-left: 20px;">
            <button onclick="startCountdown()" class="btn btn-sm btn-link" accesskey="t"><i style="color:yellow" class="fas fa-hourglass-half"></i></button>
        </div>

        <a href="{{ route('site.tempo-esgotado')}}" accesskey="l"></a>

        {!! Form::open(['method'=>'POST', 'action'=>'SiteController@ajudas']) !!}  
            <input type="hidden" name="pergunta" value="{{$pergunta}}">            
            <input type="submit" class="btn btn-sm btn-link" value="" accesskey="h">
        {!! Form::close() !!}

    </div>

@endsection
