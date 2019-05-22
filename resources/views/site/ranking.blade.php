@extends('layouts.base')

@section('content')

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header" style="text-align:center"><b>RANKING</b></div>

                <div class="card-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Colocação</th>
                                <th>Nome</th>
                                <th>Ala</th>
                                <th>Pontuação</th>
                            </tr>
                        </thead>
                        @forelse ($users as $user)
                        <tr>
                            <td style="font-size:16px;"><b>{{ $cont++ }}ª</b></td>
                            <td><b>{{ $user->name }}</b></td>
                            <td>{{ $user->ala }}</td>
                            <th style="font-size:20px;">{{ $user->pontuacao }}</th>
                        </tr>
                        @empty
                            <div class="alert alert-primary">
                                Não há registro de participantes!
                            </div>
                        @endforelse
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div style="margin-top: 20px; text-align:center;">
        <a class="link" href="{{ route('welcome') }}" accesskey="x">Home</a>
        <a class="link" href="{{ route('site.zera-ranking')}}" accesskey="z">Zerar Ranking</a>
    </div>

@endsection
