import 'package:flutter/material.dart';

class Publicaciones extends StatelessWidget {
  const Publicaciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.grid_on,
                color: Color.fromARGB(255, 61, 58, 59),
                size: 30.0,
              ),
              SizedBox(width: 150),
              Icon(
                Icons.account_box_outlined,
                color: Color.fromARGB(255, 119, 111, 114),
                size: 30.0,
              ),
            ],
          ),
          SizedBox(
              height: 290,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 180,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                itemBuilder: (context, index) => const ContainerWidget(),
              ))
        ]);
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 255, 255, 255), width: 2)),
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
