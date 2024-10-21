import 'package:flutter/material.dart';
import '../main.dart';
import 'Enlace4.dart';
import 'Enlace3.dart';
import 'Enlace1.dart';
import 'Enlace2.dart';


class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:const Color.fromARGB(255, 255, 144, 240), 
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Empresa"),
            accountEmail: Text("mivelfer5@gmail.com.com"),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://wallpapers.com/images/featured/paisajes-2iz0murq98x75o3c.jpg"),
                    fit: BoxFit.cover)),
          ),
          Ink(
            color: Color.fromARGB(255, 234, 22, 206),
            child: ListTile(
              title: const Text(
                "Instagram",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const MyApp()));
              },
            ),
          ),const SizedBox(height: 10),
          Ink(
            color: Color.fromARGB(255, 234, 22, 206),
            child: ListTile(
              title: const Text(
                "Enlace 1",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Enlace1()));
              },
            ),
          ),const SizedBox(height: 10),
             Ink(
            color: Color.fromARGB(255, 234, 22, 206),
            child: ListTile(
              title: const Text(
                "Enlace 2",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Enlace2()));
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
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Enlace3()));
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
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Enlace4()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
