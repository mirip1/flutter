import 'package:flutter/material.dart';
import 'screens/paginaUsuario.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad 4',
      
      color: Color.fromARGB(14, 0, 0, 0),
      home: PaginaUsuario(),
    );
  }
}