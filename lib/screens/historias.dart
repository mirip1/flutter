import 'package:flutter/material.dart';

class Historias extends StatelessWidget {
  const Historias({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      
      children: [
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/Nuevo.png',
                height: 55,
                width: 55,
              ),
            ),
            const Text("Nuevo"),
          ],
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/piloto.jpg',
                height: 55,
                width: 55,
                fit: BoxFit.fitHeight,
              ),
            ),
            const Text("Pilotando"),
          ],
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/Praga.jpg',
                height: 55,
                width: 55,
                fit: BoxFit.fitHeight,

              ),
            ),
            const Text("Praga y ..."),
          ],
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/paisaje.jpg',
                height: 55,
                width: 55,
                fit: BoxFit.fitHeight,

              ),
            ),
            const Text("Paisajes"),
          ],
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/retrato.jpeg',
                height: 55,
                width: 55,
                fit: BoxFit.fitWidth,
              ),
            ),
            const Text("Retratos"),
          ],
        ),
      ],
    );
  }
}
