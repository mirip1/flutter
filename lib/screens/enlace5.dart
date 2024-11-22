import 'package:flutter/material.dart';
import 'menuLateral.dart';

class Enlace5 extends StatelessWidget {
  const Enlace5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quinta pantalla"),
      ),
      drawer: const MenuLateral(),
      body:  Center(
        child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color.fromARGB(255, 247, 0, 255),
              width: 10,
            ),
          ),
          width: 280,
          height: 280,
          alignment: Alignment.center,
          child: const Text(
            'H',
            style: TextStyle(
              fontSize: 180,
              color:  Color.fromARGB(255, 247, 0, 255),
            ),
          ),
        ),
      )),
    );
  }
}
