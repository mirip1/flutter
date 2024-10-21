import 'package:flutter/material.dart';
import 'MenuLateral.dart';
import 'package:google_fonts/google_fonts.dart';

class Enlace1 extends StatelessWidget {
  const Enlace1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Primera pantalla"),
        backgroundColor:Color.fromARGB(80, 253, 0, 219), 

      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Miguel Velasco Fernández",
              style: GoogleFonts.allura(fontSize: 29),
            ),
            const SizedBox(height: 40),
            Text(
              "https://github.com/mirip1/flutter.git",
              style: GoogleFonts.alumniSans(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
