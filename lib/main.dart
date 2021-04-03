import 'package:flutter/material.dart'; //libreria propia de flutter(diseño)
import 'package:flutter_application_1/barraNavegacion.dart'; //proyecto //clase asociada

void main() {
  //main principal de todo el proyecto
  runApp(MyApp()); //correr la clase principal del proyecto(MyApp)
}

//Class hija extends padre
//stateleswhidget= whidget esun conponete fijo que no cambia(semantiene)
//stateful whidget= es un whidget o componete que cambia dinamicamente
class MyApp extends StatelessWidget {
  //es un componente de la interfaz del usuario
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //contruye la aplicacion y ubica el arbol de todos los widget
    return MaterialApp(
      //es una clase de diseño que aplica el concepto de materialdesign
      home: BarraNavegacion(), //llamando a ala clase barra navegacion
    );
  }
}
