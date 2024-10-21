import 'package:flutter/material.dart';

class Iconos extends StatelessWidget {
  const Iconos({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
            Icons.house_outlined,
          color: Color.fromARGB(255, 0, 0, 0),
          size:35.0,
        ),
        const SizedBox(width: 45),
        const Icon(
          Icons.search_outlined,
          color: Color.fromARGB(255, 0, 0, 0),
          size: 35.0,
        ),
        const SizedBox(width: 45),
        const Icon(
          Icons.add_box_outlined ,
          color: Color.fromARGB(255, 0, 0, 0),
          size: 35.0,
        ),
        const SizedBox(width: 45),
        const Icon(
          Icons.favorite_border_outlined,
          color: Color.fromARGB(255, 0, 0, 0),
          size: 35.0,
        ),
        const SizedBox(width: 45),
        ClipOval(
          child: Image.asset(
            'assets/Perfil.jpg',
            height: 30,
            width: 30,
          ),
        ),
      ],
    );
  }
}
