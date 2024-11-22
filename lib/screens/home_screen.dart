import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:ejerciciotres/screens/menuLateral.dart';

class Juego extends StatefulWidget {
  const Juego({super.key});

  @override
  _Juego createState() => _Juego();
}

class _Juego extends State<Juego> {
  double randomX = 0;
  double randomY = 0;
  int puntos = 0;
  int tiempo = 3;

  late Timer timer;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      getRandomPosition();
    });
    startTimer();
  }

  // Borrar el contador cuando se borre la imagen
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          if (tiempo > 0) {
            tiempo--;
          } else {
            puntos -= 2;
            tiempo = 3;
            getRandomPosition();
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Juego'),
      ),
      drawer: const MenuLateral(),
      body: Stack(
        children: [
          Positioned(
            left: randomX,
            top: randomY,
            child: GestureDetector(
              onTap: () {
                mostrarSnackbar();
              },
              child: Image.asset(
                'assets/Trollface.png',
                width: 55,
                height: 55,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Tiempo restante: $tiempo',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Center(
                  child: Text(
                    'Puntos: $puntos',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void getRandomPosition() {
    Random random = Random();
    double anchura = MediaQuery.of(context).size.width - 55;
    double altura = MediaQuery.of(context).size.height - 55;
    altura = altura * 0.8;
    randomX = random.nextDouble() * anchura;
    randomY = random.nextDouble() * altura;
  }

  void mostrarSnackbar() {
    puntos++;
    tiempo = 3;
    getRandomPosition();
    setState(() {
      if (puntos > 0 && puntos % 10 == 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('¡Has alcanzado $puntos puntos!'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    });
  }
}
