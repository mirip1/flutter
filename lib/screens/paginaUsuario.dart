import 'package:flutter/material.dart';
import 'screen.dart';


class PaginaUsuario extends StatelessWidget {
  const PaginaUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "alvarezdelvayo ▼",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: const Color.fromARGB(14, 0, 0, 0),
      ),
      endDrawer: const MenuLateral(),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Header(),
          SizedBox(height: 10),
          InfoUsuario(),
          SizedBox(height: 10),
          Historias(),
          SizedBox(height: 10),
          Publicaciones(),
          Iconos(),
        ],
      ),
    );
  }
}