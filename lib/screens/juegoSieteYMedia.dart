import 'dart:math'; 
import 'package:flutter/material.dart';

class JuegoSieteYMedia extends StatefulWidget {
  @override
  _JuegoSieteYMediaState createState() => _JuegoSieteYMediaState();
}

class _JuegoSieteYMediaState extends State<JuegoSieteYMedia> {
  final List<Map<String, dynamic>> baraja = [
  {'carta': '1 de Oros', 'valor': 1},
  {'carta': '2 de Oros', 'valor': 2},
  {'carta': '3 de Oros', 'valor': 3},
  {'carta': '4 de Oros', 'valor': 4},
  {'carta': '5 de Oros', 'valor': 5},
  {'carta': '6 de Oros', 'valor': 6},
  {'carta': '7 de Oros', 'valor': 7},
  {'carta': 'Sota de Oros', 'valor': 0.5},
  {'carta': 'Caballo de Oros', 'valor': 0.5},
  {'carta': 'Rey de Oros', 'valor': 0.5},
  {'carta': '1 de Espadas', 'valor': 1},
  {'carta': '2 de Espadas', 'valor': 2},
  {'carta': '3 de Espadas', 'valor': 3},
  {'carta': '4 de Espadas', 'valor': 4},
  {'carta': '5 de Espadas', 'valor': 5},
  {'carta': '6 de Espadas', 'valor': 6},
  {'carta': '7 de Espadas', 'valor': 7},
  {'carta': 'Sota de Espadas', 'valor': 0.5},
  {'carta': 'Caballo de Espadas', 'valor': 0.5},
  {'carta': 'Rey de Espadas', 'valor': 0.5},
  {'carta': '1 de Copas', 'valor': 1},
  {'carta': '2 de Copas', 'valor': 2},
  {'carta': '3 de Copas', 'valor': 3},
  {'carta': '4 de Copas', 'valor': 4},
  {'carta': '5 de Copas', 'valor': 5},
  {'carta': '6 de Copas', 'valor': 6},
  {'carta': '7 de Copas', 'valor': 7},
  {'carta': 'Sota de Copas', 'valor': 0.5},
  {'carta': 'Caballo de Copas', 'valor': 0.5},
  {'carta': 'Rey de Copas', 'valor': 0.5},
  {'carta': '1 de Bastos', 'valor': 1},
  {'carta': '2 de Bastos', 'valor': 2},
  {'carta': '3 de Bastos', 'valor': 3},
  {'carta': '4 de Bastos', 'valor': 4},
  {'carta': '5 de Bastos', 'valor': 5},
  {'carta': '6 de Bastos', 'valor': 6},
  {'carta': '7 de Bastos', 'valor': 7},
  {'carta': 'Sota de Bastos', 'valor': 0.5},
  {'carta': 'Caballo de Bastos', 'valor': 0.5},
  {'carta': 'Rey de Bastos', 'valor': 0.5},
];

  List<Map<String, dynamic>> mazo = [];
  List<Map<String, dynamic>> cartasJugador = [];
  List<Map<String, dynamic>> cartasMaquina = [];

  double puntuacionJugador = 0;
  double puntuacionMaquina = 0;
  int partidasGanadasJugador = 0;
  int partidasGanadasMaquina = 0;

  bool turnoJugador = true;

  @override
  void initState() {
    super.initState();
    iniciarJuego();
  }

  void iniciarJuego() {
    setState(() {
      mazo = List.from(baraja)..shuffle(Random());
      cartasJugador = [];
      cartasMaquina = [];
      puntuacionJugador = 0;
      puntuacionMaquina = 0;
      turnoJugador = true;
    });
  }

 void robarCartaJugador() {
  if (mazo.isNotEmpty && turnoJugador) {
    setState(() {
      final carta = mazo.removeLast();  
      cartasJugador.add(carta);         
      puntuacionJugador += carta['valor'];

      if (puntuacionJugador > 7.5) {
        turnoJugador = false; 
        finalizarRonda();
      }
    });
  }
}

void robarCartaMaquina() {
  while (puntuacionMaquina < 5.5 && mazo.isNotEmpty) {
    final carta = mazo.removeLast();  
    cartasMaquina.add(carta);         
    puntuacionMaquina += carta['valor'];
  }
}


  void plantarJugador() {
    if (turnoJugador) {
      setState(() {
        turnoJugador = false; 
      });
      finalizarRonda();
    }
  }

  void finalizarRonda() {
    robarCartaMaquina();

    String resultado;
    if (puntuacionJugador > 7.5 ||
        (puntuacionMaquina <= 7.5 && puntuacionMaquina > puntuacionJugador)) {
      resultado = 'La máquina gana';
      partidasGanadasMaquina++;
    } else if (puntuacionMaquina > 7.5 ||
        puntuacionJugador > puntuacionMaquina) {
      resultado = '¡El jugador gana!';
      partidasGanadasJugador++;
    } else {
      resultado = 'Empate';
    }

    if (partidasGanadasJugador == 5 || partidasGanadasMaquina == 5) {
      resultado += partidasGanadasJugador == 5
          ? '\n¡Has ganado la partida completa!'
          : '\nLa máquina ganó la partida completa.';
      partidasGanadasJugador = 0;
      partidasGanadasMaquina = 0;
    }

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Resultado'),
        content: Text(resultado),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              iniciarJuego();
            },
            child: const Text('Jugar de nuevo'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Juego: Siete y Media'),
        
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text('Puntuación Jugador: $puntuacionJugador',
              style: Theme.of(context).textTheme.bodyLarge),
          Wrap(
            spacing: 8,
            children: cartasJugador.map((carta) {
              return Card(
                color: Colors.amber[100],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    carta['carta'],
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          if (turnoJugador) ...[
            ElevatedButton(
                onPressed: robarCartaJugador, child: const Text('Pedir Carta')),
            ElevatedButton(
                onPressed: plantarJugador, child: const Text('Plantar')),
          ],
          const Divider(),
          Text('Puntuación Máquina: $puntuacionMaquina',
              style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 20),
          Text(
              'Partidas Ganadas: Jugador $partidasGanadasJugador - Máquina $partidasGanadasMaquina'),

          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: iniciarJuego, 
          ),

        ],
      ),
    );
  }
}
