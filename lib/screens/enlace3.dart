import 'package:flutter/material.dart';
import 'menuLateral.dart';

class Enlace3 extends StatelessWidget {
  const Enlace3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tercera pantalla"),

      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Container(
          decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Smiley.svg/1200px-Smiley.svg.png"),
                    fit: BoxFit.cover)),
            width: 120,
            height: 125,


          ),
          const SizedBox(width: 10),
           Container(
          decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Smiley.svg/1200px-Smiley.svg.png"),
                    fit: BoxFit.cover)),
            width: 120,
            height: 125,


          ),
          const SizedBox(width: 10),
           Container(
          decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Smiley.svg/1200px-Smiley.svg.png"),
                    fit: BoxFit.cover)),
            width: 120,
            height: 125,


          )
        ]),
      ),
    );
  }
}
