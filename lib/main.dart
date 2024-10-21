import 'package:flutter/material.dart';
import 'screens/PaginaUsuario.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad 4',
      
      color: const Color.fromARGB(14, 0, 0, 0),
      home: const PaginaUsuario(),
    );
  }
}