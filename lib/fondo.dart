import 'package:flutter/material.dart';

class Fondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
        decoration: new BoxDecoration(
            gradient: LinearGradient(
      colors: [Color(0xFFDBC3F9), Color(0xFFE3D8F1)],
      begin: const FractionalOffset(1.0, 0.1),
      end: const FractionalOffset(1.0, 0.6),
    )));
  }
}
