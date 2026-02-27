import 'package:flutter/material.dart';

class ConocenosPage extends StatelessWidget {
  const ConocenosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(30),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(15)),
        child: const Text(
          "Somos Spidey saurus, una tienda dedicada a coleccionista y fans de jurassic park. El rugido de los dinosaurios nos inspira para traer piezas unicas.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}