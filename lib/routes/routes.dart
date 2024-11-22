import 'package:ejerciciotres/screens/enlace5.dart';
import 'package:ejerciciotres/screens/enlace6.dart';

import 'package:ejerciciotres/screens/enlace7.dart';
import 'package:flutter/material.dart';
import 'package:ejerciciotres/screens/home_screen.dart';
import 'package:ejerciciotres/screens/paginaUsuario.dart';
import 'package:ejerciciotres/screens/enlace1.dart';
import 'package:ejerciciotres/screens/enlace2.dart';
import 'package:ejerciciotres/screens/enlace3.dart';
import 'package:ejerciciotres/screens/enlace4.dart';



final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const Juego(),
  '/segunda': (context) => const PaginaUsuario(),
  '/tercera': (context) => const Enlace1(),
  '/cuarta': (context) => const Enlace2(),
  '/quinta': (context) => const Enlace3(),
  '/sexta': (context) => const Enlace4(),
  '/septima': (context) => const Enlace5(),
  '/octava': (context) => const Enlace6(),
  '/novena': (context) => const Enlace7(),
};
