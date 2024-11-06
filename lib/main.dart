import 'package:ejerciciotres/screens/enlace1.dart';
import 'package:ejerciciotres/screens/enlace2.dart';
import 'package:ejerciciotres/screens/enlace3.dart';
import 'package:ejerciciotres/screens/enlace4.dart';
import 'package:ejerciciotres/screens/home_screen.dart';
import 'package:ejerciciotres/screens/paginaUsuario.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad 4',
      initialRoute: '/',
      color: const Color.fromARGB(14, 0, 0, 0),
      //home: Juego(),
  
      routes: {
      '/': (context) => const Juego(),
      '/segunda': (context) => const PaginaUsuario(),
      '/tercera': (context) => const Enlace1(),
      '/cuarta': (context) => const Enlace2(),
      '/quinta': (context) => const Enlace3(),
      '/sexta': (context) => const Enlace4(),


      },
    );
  }
}