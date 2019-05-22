<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pergunta;

class PerguntaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $perguntas = Pergunta::all()->where('ativo', '1')->sortByDesc('id');

        return view('perguntas.create', compact('perguntas'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //dd($request);
        $p = new Pergunta();

        $p->descricao = $request->descricao;
        $p->tipo = $request->tipo; // 1-DC, 2-LM, 3-NT e 4-VT
        $p->nivel = $request->nivel;

        $p->save();

        return redirect()->route('respostas.create')->with('alertSuccess', 'Pergunta cadastrada com sucesso!');
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
        $p = Pergunta::find($id);
        return view('perguntas.update', compact('p'));
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
        $p = Pergunta::find($id);

        $p->descricao = $request->descricao;
        $p->tipo = $request->tipo; 
        $p->nivel = $request->nivel;
        $p->status = $request->status;

        $p->update();

        return redirect()->route('perguntas.create')->with('alertSuccess', 'Pergunta atualizada com Sucesso!');
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
