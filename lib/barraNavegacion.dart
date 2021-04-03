import 'package:flutter/material.dart';
import 'package:flutter_application_1/info.dart';
import 'package:flutter_application_1/inicio.dart';
import 'package:flutter_application_1/noticia.dart';
import 'package:flutter_application_1/trabajo.dart';

//Class hija extends padre
//stateleswhidget= whidget esun conponete fijo que no cambia(semantiene)
//stateful whidget= es un whidget o componete que cambia dinamicamente
class BarraNavegacion extends StatefulWidget {
  //widget dinamico
  @override //sobreescribir
  State<StatefulWidget> createState() {
    //crea un estado del widget dianamico
    return _BarraNavegacion();
  }
}

class _BarraNavegacion extends State {
  //_barranavegacion hereda de la class state
  int indexCF = 0; //variable entera cuyo valor inicial es 0
  //final List<Integer> numeros;={1,2,10,100,25,3};
  //Integer numero1=3;
  final List<Widget> widgetScreens = [
    Inicio(),
    Informacion(),
    Trabajo(),
    Noticia()
  ];
  void onTapped(int index) {
    //asigna valores a la variable index
    //inicio del metodo onTapped
    setState(() {
      //metodo para hacinar valor a la variable indexof
      indexCF = index;
    });
  } //fin del metodo onTapped

  @override
  Widget build(BuildContext context) {
    //index que contruye el contexto de la aplicacion del proyecto

    return Scaffold(
      //clase de la interfaz grafica para mostrar cuadros cajas y hojas de contenidos
      body: widgetScreens[indexCF], //widget de la pantalla pricipal
      bottomNavigationBar: Theme(
        //
        data: Theme.of(context).copyWith(
            canvasColor: Color(0xFF0F36E4), primaryColor: Colors.black),
        child: BottomNavigationBar(
          onTap: onTapped,
          currentIndex: indexCF,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: 'INICIO'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.article_outlined,
                  color: Colors.black,
                ),
                label: 'INFO'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.badge,
                  color: Colors.black,
                ),
                label: 'TRABAJO'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.article_outlined,
                  color: Colors.black,
                ),
                label: 'NOTICIA'),
          ],
        ),
      ),
    );
  }
}
