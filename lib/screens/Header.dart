import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(width: 20),
        ClipOval(
          child: Image.asset(
            'assets/Perfil.jpg',
            height: 70,
            width: 70,
          ),
        ),
        const SizedBox(width: 40),
        const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "1.026",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "Publica...",
                style: TextStyle(fontSize: 13),
              ),
            ]),
        const SizedBox(width: 35),
        const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "859",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "Seguidores",
                style: TextStyle(fontSize: 13),
              ),
            ]),
        const SizedBox(width: 25),
        const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "211",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "Seguidos",
                style: TextStyle(fontSize: 13),
              ),
            ]),
      ],
    );
  }
}
