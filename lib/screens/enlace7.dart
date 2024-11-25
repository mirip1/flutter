import 'package:flutter/material.dart';
import 'menuLateral.dart';

class Enlace7 extends StatefulWidget {
  const Enlace7({super.key});

  @override
  _Enlace7State createState() => _Enlace7State();
}

class _Enlace7State extends State<Enlace7> {
  int _contador = 0;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  void _decrementar() {
    if (_contador != 0) {
      setState(() {
        _contador--;
      });
    } 
  }

  void _reiniciar() {
    setState(() {
      _contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sexta pantalla"),
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Text(
              'Contador: $_contador',
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _incrementar,
                  child: const Text('Incrementar'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _decrementar,
                  child: const Text('Decrementar'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _reiniciar,
              child: const Text('Reiniciar'),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
