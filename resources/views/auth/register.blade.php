@extends('layouts.base')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                
                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Nome') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="ala" class="col-md-4 col-form-label text-md-right">{{ __('Ala') }}</label>

                            <div class="col-md-6">
                                <input id="ala" type="text" class="form-control{{ $errors->has('ala') ? ' is-invalid' : '' }}" name="ala" value="{{ old('ala') }}" required>

                                @if ($errors->has('ala'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('ala') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="ala" class="col-md-4 col-form-label text-md-right">{{ __('Jogo') }}</label>

                            <div class="col-md-6">
                                <div class="form-check">
                                    <label class="form-check-label" for="check1">
                                        <input type="radio" class="form-check-input" name="pergunta_tipo" value="1" checked>Doutrina e Convênios
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label" for="check2">
                                        <input type="radio" class="form-check-input" name="pergunta_tipo" value="2">Livro de Mórmon
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label" for="check2">
                                        <input type="radio" class="form-check-input" name="pergunta_tipo" value="3">Novo Testamento
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label" for="check2">
                                        <input type="radio" class="form-check-input" name="pergunta_tipo" value="4">Velho Testamento
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label" for="check2">
                                        <input type="radio" class="form-check-input" name="pergunta_tipo" value="5">Diversidades
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label" for="check2">
                                        <input type="radio" class="form-check-input" name="pergunta_tipo" value="6">Topa tudo
                                    </label>
                                </div>
                            </div>
                            
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Código') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        
                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Cadastrar') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div>
            <div class="title m-b-md" style="color:white; text-align:center;">
                Show do <b>SEMINA</b>LHÃO
            </div>
            <div style="text-align:center; float:bottom;">
                <a class="link" href="{{ route('welcome') }}" accesskey="x"><i>home</i></a>
            </div>
        </div>

    </div>
</div>
@endsection
