import 'package:flutter/material.dart';
import 'menuLateral.dart';

class Enlace4 extends StatelessWidget {
  const Enlace4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cuarta pantalla"),
        backgroundColor:Color.fromARGB(80, 253, 0, 219), 

      ),
      drawer: const MenuLateral(),
      body: const Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 36.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          Icon(
            Icons.audiotrack,
            color: Colors.green,
            size: 36.0,
          ),
          Icon(
            Icons.beach_access,
            color: Colors.blue,
            size: 36.0,
          ),
           Icon(
            Icons.import_contacts,
            color: Color.fromARGB(255, 243, 33, 138),
            size: 36.0,
          ),
           Icon(
            Icons.account_tree_outlined,
            color: Color.fromARGB(255, 240, 243, 33),
            size: 36.0,
          ),
        ],
      )),
    );
  }
}
