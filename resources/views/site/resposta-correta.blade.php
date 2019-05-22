@extends('layouts.base')

@section('content')
    
    <div class="flex-center position-ref full-height">
        <div class="container">
            <!-- Button to Open the Modal -->
            <button type="button" value="" class="btn btn-link" data-toggle="modal" data-target="#myModal"></button>

            <!-- The Modal -->
            <div class="modal fade" id="myModal">
                <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                    <h5 class="modal-title">Show do Seminalhão</h5>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body" style="background-color: forestgreen; color:white; text-align:center;">
                        <i class="far fa-smile" style="font-size: 30px"></i>
                        <h1>Resposta Correta!</h1>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <a href="{{ route('site.index') }}" class="btn btn-outline-secondary" accesskey="x">X</a>
                        {!! Form::open(['method'=>'POST', 'action'=>'SiteController@ajudas']) !!}  
                            <input type="submit" class="btn btn-sm btn-link" value="" accesskey="h">
                        {!! Form::close() !!}
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
@endsection
