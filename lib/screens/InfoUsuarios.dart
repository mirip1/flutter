import 'package:flutter/material.dart';

class InfoUsuario extends StatelessWidget {
  const InfoUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Text(
          "      Fernando Álvarez del Vayo",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text("      Nunca sabes lo que te depara el futuro."),
        const Text(
          "      faqsandroid.com/",
          style: TextStyle(color: Color.fromARGB(255, 9, 83, 143)),
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.black12),
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: const Text(
              'Editar perfil',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
