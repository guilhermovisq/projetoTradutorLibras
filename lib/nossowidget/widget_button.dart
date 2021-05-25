import 'package:flutter/material.dart';
class Botoes extends StatelessWidget {
  final String texto;
  final Function onPressed;
  Botoes (this.texto, {this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.white,
        child: Text(
          texto,
          style: TextStyle(
            color: Colors.red,
            fontSize: 14.8,
          ),
        ),
        onPressed: onPressed);
  }
}
