import 'package:flutter/material.dart';
import 'package:proyecto_2/main.dart';
import 'package:proyecto_2/tercera_pagina.dart';

class SegundaPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Segunda Pagina'),
      ),

      body: Center(
        child: Column(
        children: [
          ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'Flutter Demo')));
          },
          child: Text('Para ir a la primera pantalla'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => TerceraPagina()));
          },
          child: Text('Ir a tercera pantalla'),
        ),
      ],
    ),
      ),
    );
  }
}