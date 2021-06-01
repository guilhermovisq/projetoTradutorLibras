import 'package:flutter/material.dart';
import 'package:projeto_tradutor/nossowidget/widget_imagens.dart';
import 'package:projeto_tradutor/traducao.dart';

import 'nossowidget/widget_button.dart';
import 'nossowidget/widget_input.dart';
import 'nossowidget/widget_text.dart';
class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  final traducao = TextEditingController();
  String tradu = "abcd";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Tradutor de LIBRAS"),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Textos("Informe um texto:")
            ],
          ),
          Wrap(
            children: [
              InputTextos("", "", controller: traducao,),
              SizedBox(
                width: 10,
                height: 10,
              )
            ],
          ),
          Row(
            children: [
              Botoes("Enviar Imagem", onPressed: _imagens,),
              Botoes("Enviar arquivo de áudio", onPressed: _audio,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Botoes("Traduzir", onPressed: () {
                _traduzir(context, Traducao(tradu));
              },),
            ],
          ),
        ],
      ),
    );
  }

  _imagens() {
  }

  _audio() {
  }

  _traduzir(ctx, Traducao page) {
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context){
      return page;
    }
    ));
  }
}
