import 'package:flutter/material.dart';

class Historias extends StatelessWidget {
  const Historias({super.key});

  final List<Map<String, String>> historias = const [
    {'imagen': 'assets/Nuevo.png', 'texto': 'Nuevo'},
    {'imagen': 'assets/piloto.jpg', 'texto': 'Pilotando'},
    {'imagen': 'assets/Praga.jpg', 'texto': 'Praga y ...'},
    {'imagen': 'assets/paisaje.jpg', 'texto': 'Paisajes'},
    {'imagen': 'assets/retrato.jpeg', 'texto': 'Retratos'},
    {'imagen': 'assets/gym.jpeg', 'texto': 'Gym'},
    {'imagen': 'assets/futbol.jpeg', 'texto': 'Futbol'},

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75, // Altura total para las historias (imagen + texto)
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: historias.length,
        itemBuilder: (context, index) {
          final historia = historias[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipOval(
                  child: Image.asset(
                    historia['imagen']!,
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  historia['texto']!,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
