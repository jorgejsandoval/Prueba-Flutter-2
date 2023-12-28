import 'package:flutter/material.dart';
import 'package:proyecto_2/main.dart';

class TerceraPagina extends StatelessWidget {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Tercera Pagina'),
      ),
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Colors.grey,
            onDestinationSelected: (newIndex) {
              setState(() {
                selectedIndex = newIndex;
              });
            },
            selectedIconTheme: IconThemeData(color: Colors.white),
            selectedIndex: selectedIndex,
            destinations: [
              NavigationRailDestination(icon: Icon(Icons.home), label: Text('Home')),
              NavigationRailDestination(icon: Icon(Icons.phone), label: Text('Call')),
              NavigationRailDestination(icon: Icon(Icons.help), label: Text('Info')),
            ],
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}