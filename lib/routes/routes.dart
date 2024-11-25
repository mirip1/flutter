import 'package:ejerciciotres/screens/screen.dart';


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
