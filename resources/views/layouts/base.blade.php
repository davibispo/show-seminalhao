<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="{!! asset('img/icon.png') !!}">   

        <title>Show do SEMINALHÃO</title>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

        <!-- JQuery -->
        <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

        <!-- bootstrap -->
        <script type="text/javascript" src="js/bootstrap.js"></script>

        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <!-- Scripts -->
        <script src="{{ asset('js/app.js') }}" defer></script>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <!-- FontAwesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">

        <!-- Styles -->
        <link rel="stylesheet" type="text/css" href="{{ url('css/estilo.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ url('css/app.css') }}">

        <!-- Tooltip -->
        <script type="text/javascript">
            $(document).ready(function(){
              $('[data-toggle="tooltip"]').tooltip();
            });
        </script>

        <!-- chamada da função Modal Resposta Correta -->
        <script type="text/javascript">
            $(window).load(function() {
                $('#myModal').modal('show');
            });
        </script>

        <!-- contador regressivo -->
        <script language="JavaScript">

            var g_iCount = new Number();

            // de 11 a 0 //
            var g_iCount = 11;

            var somTempo = new Audio('sons/som_tempo10s.mp3');

            function startCountdown(){
                if((g_iCount - 1) >= 0){
                    g_iCount = g_iCount - 1;
                    numberCountdown.innerText = '' + g_iCount;
                    setTimeout('startCountdown()',1000);
                    somTempo.play(); //toca o som
                }
            }
        </script>
        <!-- fim contador regressivo -->

        <!-- Esconder e mostrar respostas -->
        <script>
            function mostrar_respostas(obj) {
                var pergunta = new Audio('sons/perguntashowdomilhao.mp3');
                
                /* Mostra */
                switch (obj.id) {
                    case 'mostra_pergunta':
                        document.getElementById('div_pergunta').style.display="";
                        pergunta.play();
                    break
                    case 'mostra_resposta1':
                        document.getElementById('div_resposta1').style.display="";
                    break
                    case 'mostra_resposta2':
                        document.getElementById('div_resposta2').style.display="";
                    break
                    case 'mostra_resposta3':
                        document.getElementById('div_resposta3').style.display="";
                    break
                    case 'mostra_resposta4':
                        document.getElementById('div_resposta4').style.display="";
                    break
                }
            }
        </script>
        <!-- Fim Esconder e mostrar respostas -->

    </head>
    <body style="background: url(img/img-show.jpg) no-repeat fixed center; background-size: 100%">
        <nav class="banner-top">
            <ul class="banner-top-ul">
                <!-- Authentication Links -->
                @guest
                    @if (Route::has('register'))
                        <li style="text-align:center">
                            <a href="{{ route('register') }}" accesskey="n">{{ __('Novo Participante') }}</a>
                        </li>
                    @endif
                @else

                    <li style="text-align:center;">
                        <b style="color:white; ">Show do SEMINALHÃO</b>
                        
                        <i style="float:left; font-size:10px;">
                            <!-- Mostra número de perguntas -->
                            @php
                                echo DB::table('perguntas')->select('id')->where('status','!=','0')->where('tipo', auth()->user()->pergunta_tipo)->count();
                                echo "/";
                                if(auth()->user()->pergunta_tipo == 6){
                                    echo DB::table('perguntas')->select('id')->where('status','0')->count();
                                }else{
                                    echo DB::table('perguntas')->select('id')->where('status','0')->where('tipo', auth()->user()->pergunta_tipo)->count();
                                }
                            @endphp
                        </i>
                        <b class="banner-nome">{{ Auth::user()->name }} / {{ auth()->user()->ala }}</b>
                    </li>

                @endguest
            </ul>
        </nav>

        @yield('content')

    </body>
</html>
