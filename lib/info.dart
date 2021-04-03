import 'package:flutter/material.dart';
import 'package:flutter_application_1/fondo.dart';
import 'package:flutter_application_1/listaCards.dart';

class Informacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Fondo(),
            ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: (Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        child: (Text(
                          "Hola, Elias Pavon",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: "Nunito"),
                        )),
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        margin: EdgeInsets.only(left: 110.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/images/eliasPerfil.jpg'),
                            )),
                      ),
                    ],
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0),
                  child: (Text(
                    "Esta seccion hablaremos de las noticas mas revelantes del Data Science en Ecuador.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0A2DCC)),
                  )),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 30.0, top: 50.0, right: 30.0),
                  child: (Text(
                    "Puedes hechar un vistazo y picar sobre la noticia que quieras conocer detalles.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
                ),
                ListaCards(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
