import 'package:flutter/material.dart';
import 'package:interfaz_instagram/screens/Header.dart';
import 'package:interfaz_instagram/screens/Iconos.dart';
import 'package:interfaz_instagram/screens/InfoUsuarios.dart';
import 'package:interfaz_instagram/screens/MenuLateral.dart';
import 'package:interfaz_instagram/screens/Historias.dart';
import 'package:interfaz_instagram/screens/Publicaciones.dart';


class PaginaUsuario extends StatelessWidget {
  const PaginaUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "alvarezdelvayo ▼",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: const Color.fromARGB(14, 0, 0, 0),
      ),
      endDrawer: const MenuLateral(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: const [
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