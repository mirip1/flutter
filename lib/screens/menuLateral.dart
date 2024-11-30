import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 255, 144, 240),
      child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 100, // Ajusta la altura según lo necesario
            child: UserAccountsDrawerHeader(
              accountName: Text("Empresa"),
              accountEmail: Text("mivelfer5@gmail.com"),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://wallpapers.com/images/featured/paisajes-2iz0murq98x75o3c.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Ink(
            color: Color.fromARGB(255, 234, 22, 206),
            child: ListTile(
              title: const Text(
                "Actividad 3",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ),
           const SizedBox(height: 10),
          Ink(
            color: Color.fromARGB(255, 234, 22, 206),
            child: ListTile(
              title: const Text(
                "Siete Y Media",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/decima');
              },
            ),
          ),
          const SizedBox(height: 10),
          Ink(
            color: Color.fromARGB(255, 234, 22, 206),
            child: ListTile(
              title: const Text(
                "Instagram",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/segunda');
              },
            ),
          ),
          const SizedBox(height: 10),
          Ink(
            color: Color.fromARGB(255, 234, 22, 206),
            child: ListTile(
              title: const Text(
                "Enlace 1",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/tercera');
              },
            ),
          ),
          const SizedBox(height: 10),
          Ink(
            color: Color.fromARGB(255, 234, 22, 206),
            child: ListTile(
              title: const Text(
                "Enlace 2",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/cuarta');
              },
            ),
          ),
          const SizedBox(height: 10),
          Ink(
            color: Color.fromARGB(255, 234, 22, 206),
            child: ListTile(
              title: const Text(
                "Enlace 3",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/quinta');
              },
            ),
          ),
          const SizedBox(height: 10),
          Ink(
            color: Color.fromARGB(255, 234, 22, 206),
            child: ListTile(
              title: const Text(
                "Enlace 4",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/sexta');
              },
            ),
          ),
          const SizedBox(height: 10),
          Ink(
            color: Color.fromARGB(255, 234, 22, 206),
            child: ListTile(
              title: const Text(
                "Enlace 5",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/septima');
              },
            ),
          ),
          const SizedBox(height: 10),
          Ink(
            color: Color.fromARGB(255, 234, 22, 206),
            child: ListTile(
              title: const Text(
                "Enlace 6",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/octava');
              },
            ),
          ),
         
          const SizedBox(height: 10),
          Ink(
            color: Color.fromARGB(255, 234, 22, 206),
            child: ListTile(
              title: const Text(
                "Enlace 7",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/novena');
              },
            ),
          ),
          
        ],
      ),
    );
  }
}
