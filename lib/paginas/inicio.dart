import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Tienda especializada en figuras de jurassic park y jurassic world perfecta para cualquier fan",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Image.network('https://raw.githubusercontent.com/Gael-Carrasco-0459/Act14_6pantallas_JGCA_0459/refs/heads/main/Rexy-_the_Jurassic_Park_Tyrannosaurus_rex.png', width: 200),
          ],
        ),
      ),
    );
  }
}