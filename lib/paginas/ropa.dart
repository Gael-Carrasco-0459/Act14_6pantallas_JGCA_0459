import 'package:flutter/material.dart';
import 'package:myapp/paginas/product_card.dart';

class RopaPage extends StatelessWidget {
  const RopaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return gridBuilder(1, [
      const ProductCard(
        name: "Playera JW", 
        img: "https://raw.githubusercontent.com/Gael-Carrasco-0459/Act11_segunda_pantalla_JGCA_0459/refs/heads/main/playera.JPG"
      ),
      const ProductCard(
        name: "Pantalon JW", 
        img: "https://raw.githubusercontent.com/Gael-Carrasco-0459/Act11_segunda_pantalla_JGCA_0459/refs/heads/main/pantalon.jpg"
      ),
      const ProductCard(
        name: "Zip Hoodie JP", 
        img: "https://raw.githubusercontent.com/Gael-Carrasco-0459/Act14_6pantallas_JGCA_0459/refs/heads/main/zip%20hoodie.jpg"
      ),
      const ProductCard(
        name: "Hoodie JP", 
        img: "https://raw.githubusercontent.com/Gael-Carrasco-0459/Act14_6pantallas_JGCA_0459/refs/heads/main/hoodie%20jw.jpg"
      ),
    ]);
  }
}