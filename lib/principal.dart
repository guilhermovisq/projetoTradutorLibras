import 'package:flutter/material.dart';

import 'nossowidget/widget_input.dart';
import 'nossowidget/widget_text.dart';
class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  final traducao = TextEditingController();
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
      height: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              child: Wrap(
                children: [
                  Textos("Informar um texto:")
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: InputTextos("", "Digite aqui", controller: traducao),
            ),
          )
        ],
      ),
    );
  }
}
