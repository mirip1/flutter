import 'package:flutter/material.dart';

class Publicaciones extends StatefulWidget {
  const Publicaciones({super.key});

  @override
  _PublicacionesState createState() => _PublicacionesState();
}

class _PublicacionesState extends State<Publicaciones> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         
            IconButton(
              icon: const Icon(
                Icons.grid_on,
                color: Color.fromARGB(255, 61, 58, 59),
                size: 30.0,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 0; 
                });
              },
            ),
            const SizedBox(width: 150),

            IconButton(
              icon: const Icon(
                Icons.account_box_outlined,
                color: Color.fromARGB(255, 119, 111, 114),
                size: 30.0,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 1; 
                });
              },
            ),
          ],
        ),

        _selectedIndex == 0
            ? SizedBox(
                height: 290,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 180,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                  ),
                  itemBuilder: (context, index) => const ContainerWidget(),
                ),
              )
            : SizedBox(
                height: 290,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    childAspectRatio: 2 / 2.35,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                  ),
                  itemBuilder: (context, index) => const ContainerWidget2(),
                  itemCount: 10,
                ),
              ),
      ],
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 255, 255, 255), width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/paisajemorao.jpg',
            fit: BoxFit.cover, 
          ),
        ],
      ),
    );
  }
}

class ContainerWidget2 extends StatelessWidget {
  const ContainerWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 255, 255, 255), width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/ejpubli.png',
            fit: BoxFit.cover, 
          ),
        ],
      ),
    );
  }
}
