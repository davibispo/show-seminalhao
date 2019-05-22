<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Resposta;
use App\Pergunta;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\User;

class SiteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $perguntas = Pergunta::all();
        $respostas = Resposta::all();
        
        $count = DB::table('perguntas')
                    ->select('id')
                    ->where('ativo', '1')
                    ->where('status','0')
                    ->count(); // numero de perguntas ativas e não respondidas.

        if(Auth::check() == true){
            // mostra a quantidade de pulos e ajudas
            $pulos = DB::table('users')->select('pulos')->where('id', auth()->user()->id)->value('pulos'); 
            $ajudas = DB::table('users')->select('ajudas')->where('id', auth()->user()->id)->value('ajudas'); 

            // seleciona o tipo de perguntas
            switch (auth()->user()->pergunta_tipo){ 
                case '1':
                    $sorteio = DB::select("select id from perguntas where ativo = 1 and status = 0 and tipo = 1 order by rand() limit 1", [0]); // escolhe uma das perguntas aleatoriamente.
                    break;
                case '2':
                    $sorteio = DB::select("select id from perguntas where ativo = 1 and status = 0 and tipo = 2 order by rand() limit 1", [0]); // escolhe uma das perguntas aleatoriamente.
                    break;
                case '3':
                    $sorteio = DB::select("select id from perguntas where ativo = 1 and status = 0 and tipo = 3 order by rand() limit 1", [0]); // escolhe uma das perguntas aleatoriamente.
                    break;
                case '4':
                    $sorteio = DB::select("select id from perguntas where ativo = 1 and status = 0 and tipo = 4 order by rand() limit 1", [0]); // escolhe uma das perguntas aleatoriamente.
                    break;
                case '5':
                    $sorteio = DB::select("select id from perguntas where ativo = 1 and status = 0 and tipo = 5 order by rand() limit 1", [0]); // escolhe uma das perguntas aleatoriamente.
                    break;
                case '6':
                    $sorteio = DB::select("select id from perguntas where ativo = 1 and status = 0 and (tipo = 1 or tipo = 2 or tipo = 3 or tipo = 4 or tipo = 5) order by rand() limit 1", [0]); // escolhe uma das perguntas aleatoriamente.
                    break;
                default;
            }
        }else{
            return view('auth.register');
        }

        $sorteio = $sorteio[0]->id; // retorna o elemento id do array e insere na variável $sorteio.

        $pergunta  = DB::table('perguntas')
                            ->select('descricao')
                            ->where('ativo', '1')
                            ->where('status','0')
                            ->where('id', $sorteio)
                            ->value('descricao'); // retorna uma pergunta ativa e não respondida, aleatoriamente.

        $idPergunta  = DB::table('perguntas')->select('id')->where('id', $sorteio)->value('id'); // retorna o id da pergunta.
        $nivel       = DB::table('perguntas')->select('nivel')->where('id', $sorteio)->value('nivel'); // retorna o nivel de dificuldade da pergunta.

        switch($nivel){ // para mostrar a pontuação de cada pergunta na tela.
            case '1':
                $pontos = 10;
                break;

            case '2':
                $pontos = 20;
                break;

            case '3':
                $pontos = 40;
                break;

            default;
        }

        // retorna a resposta escolhida:
        $resposta1 = DB::table('respostas')->select('resposta1')->where('id_pergunta', $sorteio)->value('resposta1');
        $resposta2 = DB::table('respostas')->select('resposta2')->where('id_pergunta', $sorteio)->value('resposta2');
        $resposta3 = DB::table('respostas')->select('resposta3')->where('id_pergunta', $sorteio)->value('resposta3');
        $resposta4 = DB::table('respostas')->select('resposta4')->where('id_pergunta', $sorteio)->value('resposta4');

        if(Auth::check() == true){
            return view('site.index', compact('perguntas', 'respostas', 'pergunta', 'idPergunta', 'resposta1', 'resposta2', 'resposta3', 'resposta4', 'nivel', 'pontos', 'pulos', 'ajudas'));
        }else{
            return view('auth.register');
        }

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //dd($request->escolha);

        //escolhas 5: jump, 6: help, 7: stop
        if($request->escolha == '5'){

            DB::table('perguntas')->where('id', $request->id_pergunta)->update(['status' => 3]); //atualiza o status para 3 (pulada)
            DB::table('users')->where('id', auth()->user()->id)->decrement('pulos'); // decrementa 1 pulo

            return redirect()->back(); //redireciona para mesma página e gera uma nova pergunta.
        }else{
            // Faz uma consulta e compara se existe a combinação resposta correta com o id_pergunta.
            $resposta = DB::table('respostas')
                            ->select('correta')
                            ->where('correta', $request->escolha)
                            ->where('id_pergunta', $request->id_pergunta)
                            ->value('correta'); // retorna o número da resposta correta.

            if($resposta != null){

                DB::table('perguntas')->where('id', $request->id_pergunta)->update(['status' => 1]); // atualiza o campo status da tabela pergunta para 1 (respondido corretamente)

                //pontuacao
                $pontuacao = auth()->user()->pontuacao;

                switch($request->nivel){ //para cada resposta certa será somada a pontuação equivalente e atualizada no users.
                    case '1':
                        DB::table('users')->where('id', auth()->user()->id)->update(['pontuacao' => ($pontuacao + 10)]);
                        break;

                    case '2':
                        DB::table('users')->where('id', auth()->user()->id)->update(['pontuacao' => ($pontuacao + 20)]);
                        break;

                    case '3':
                        DB::table('users')->where('id', auth()->user()->id)->update(['pontuacao' => ($pontuacao + 40)]);
                        break;

                    default;
                }

                return redirect()->route('site.resposta-correta');

            }else{

                DB::table('users')->where('id', auth()->user()->id)->update(['pontuacao' => 0]); //resposta errada zera a pontuação.
                Auth::logout(); // sistema faz logout ao errar a resposta.

                return redirect()->route('site.resposta-errada');
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function stop()
    {
        return view('site.stop');
    }

    public function zerarStatus()
    {   // atualiza o status das perguntas para 0, disponibilizando todas elas no jogo.

        DB::table('perguntas')->where('status', '<>', '0')->update(['status' => 0]);
        return redirect()->route('welcome');
    }

    public function respostaCorreta()
    {
        return view('site.resposta-correta');
    }

    public function respostaErrada()
    {
        return view('site.resposta-errada');
    }

    public function ranking()
    {
        $users = User::all()->sortByDesc('pontuacao');
        $cont = 1;
        return view('site.ranking', compact('users', 'cont'));
    }

    public function zeraRanking()
    {   // exclui todos os usuários da tabela user.

        DB::table('users')->select('id')->where('id', '>', 0)->delete();
        return redirect()->route('welcome');
    }

    public function tempoEsgotado(){
        // caso não haja reposta a pergunta no tempo determinado, o jogo encerra e mantem-se metade dos pontos.

        $pontos = auth()->user()->pontuacao;
        $pontuacaoDiminuida = ($pontos / 2);
        DB::table('users')->where('id', auth()->user()->id)->update(['pontuacao' => $pontuacaoDiminuida]);

        return redirect()->route('site.stop');
    }

    public function ajudas()
    {
        DB::table('users')->where('id', auth()->user()->id)->decrement('ajudas');

        return redirect()->route('site.index');
    }

}
