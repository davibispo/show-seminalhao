<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Resposta;
use App\Pergunta;

class RespostaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $perguntas = Pergunta::all()->where('ativo','1')->sortByDesc('id');

        return view('respostas.create', compact('perguntas'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $r = new Resposta();

        $r->id_pergunta = $request->id_pergunta;

        $r->resposta1 = $request->resposta1;
        $r->resposta2 = $request->resposta2;
        $r->resposta3 = $request->resposta3;
        $r->resposta4 = $request->resposta4;
        $r->correta = $request->correta;

        $r->save();

        return redirect()->route('perguntas.create')->with('alertSuccess', 'Respostas cadastradas com sucesso!');
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
        $perguntas = Pergunta::all()->where('ativo','1')->sortByDesc('id');
        $r = Resposta::find($id);

        return view('respostas.update', compact('perguntas','r'));
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
        $r = Resposta::find($id);
        //dd($r);
        $r->resposta1 = $request->resposta1;
        $r->resposta2 = $request->resposta2;
        $r->resposta3 = $request->resposta3;
        $r->resposta4 = $request->resposta4;

        $r->correta = $request->correta;
        $r->id_pergunta = $request->id_pergunta;

        $r->update();

        return redirect()->route('respostas.create')->with('alertSuccess', 'Resposta atualizada com Sucesso!');

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
}
