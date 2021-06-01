import 'package:flutter/material.dart';

import 'nossowidget/widget_imagens.dart';
class Traducao extends StatefulWidget {
  final String tradu;
  const Traducao(this.tradu);
  @override
  _TraducaoState createState() => _TraducaoState();
}

class _TraducaoState extends State<Traducao> {
  @override
  String traducao;
  Widget build(BuildContext context) {
    traducao=(widget.tradu).toString();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Tradução"),
        backgroundColor: Colors.blue,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SuaImagem(caminhoArquivo: "imagens/"+traducao[0]+".jpg",),
              SuaImagem(caminhoArquivo: "imagens/"+traducao[1]+".jpg",),
              SuaImagem(caminhoArquivo: "imagens/"+traducao[2]+".jpg",),
              SuaImagem(caminhoArquivo: "imagens/"+traducao[3]+".jpg",),
            ],
          )
        ],
      ),
    );
  }
}
