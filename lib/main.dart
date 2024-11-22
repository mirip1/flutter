import 'package:flutter/material.dart';
import 'package:ejerciciotres/routes/routes.dart'; 

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad 4',
      initialRoute: '/', 
      routes: appRoutes, 
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 194, 33, 243), 
        scaffoldBackgroundColor: const Color.fromARGB(255, 242, 241, 193), 
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blue),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
          bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor:Color.fromARGB(80, 253, 0, 219), 
          titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
    );
  }
}
