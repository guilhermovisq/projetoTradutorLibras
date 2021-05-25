import 'package:flutter/material.dart';

class Textos extends StatelessWidget {
  String seuTexto;
  @override
  Widget build(BuildContext context) {
    return Text(
      seuTexto,
      style: TextStyle(
          color: Colors.red,
          backgroundColor: Colors.white,
          fontSize: 25
      ),
    );
  }
  Textos(this.seuTexto);
}
