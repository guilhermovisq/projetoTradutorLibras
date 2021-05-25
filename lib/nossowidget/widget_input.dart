import 'package:flutter/material.dart';
class InputTextos extends StatelessWidget {
  String rotulo;
  String label;
  TextEditingController controller;

  InputTextos(this.rotulo, this.label, {this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: 6,
      maxLength: 200,
      style: TextStyle(
        color: Colors.black,
        backgroundColor: Colors.white
      ),
      decoration: InputDecoration(
        labelText: rotulo,
        hintText: label,
    ),
    );
  }
}
