import 'package:flutter/material.dart';
import 'package:myapp/paginas/product_card.dart';

class EstatuasPage extends StatelessWidget {
  const EstatuasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return gridBuilder(2, [
      const ProductCard(
        name: "Velociraptor hunt iron studio", 
        img: "https://raw.githubusercontent.com/Gael-Carrasco-0459/Act14_6pantallas_JGCA_0459/refs/heads/main/Breakout-Raptor-Jurassic-Park-de-CC.jpg"
      ),
      const ProductCard(
        name: "T rex iron studio", 
        img: "https://raw.githubusercontent.com/Gael-Carrasco-0459/Act14_6pantallas_JGCA_0459/refs/heads/main/T-Rex-Art-Escala.jpg"
      ),
      const ProductCard(
        name: "Triceratops iron studio", 
        img: "https://raw.githubusercontent.com/Gael-Carrasco-0459/Act14_6pantallas_JGCA_0459/refs/heads/main/Triceratops-Diorama-Art-Escala.jpg"
      ),
      const ProductCard(
        name: "Mosasaurus iron studio", 
        img: "https://raw.githubusercontent.com/Gael-Carrasco-0459/Act14_6pantallas_JGCA_0459/refs/heads/main/mosasaurus-jurassic-world-estatua-iron-studios-17.png"
      ),
    ]);
  }
}