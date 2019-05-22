<?php

Route::post('/site/ajudas', 'SiteController@ajudas')->name('site.ajudas');
Route::get('/site/tempo-esgotado', 'SiteController@tempoEsgotado')->name('site.tempo-esgotado');
Route::get('/site/zera-ranking', 'SiteController@zeraRanking')->name('site.zera-ranking');
Route::get('/site/ranking', 'SiteController@ranking')->name('site.ranking');
Route::get('/site/resposta-errada', 'SiteController@respostaErrada')->name('site.resposta-errada');
Route::get('/site/resposta-correta', 'SiteController@respostaCorreta')->name('site.resposta-correta');
Route::get('/site/zerar-status', 'SiteController@zerarStatus')->name('site.zerar-status');
Route::get('/site/stop', 'SiteController@stop')->name('site.stop');
Route::resource('perguntas', 'PerguntaController');
Route::resource('respostas', 'RespostaController');
Route::resource('site', 'SiteController');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/', function () {return view('welcome');})->name('welcome');
