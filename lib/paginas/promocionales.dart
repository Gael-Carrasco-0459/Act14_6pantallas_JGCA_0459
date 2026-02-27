import 'package:flutter/material.dart';
import 'package:myapp/paginas/product_card.dart';

class PromocionalesPage extends StatelessWidget {
  const PromocionalesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return gridBuilder(2, [
      const ProductCard(
        name: "Palomera JW dominion", 
        img: "https://raw.githubusercontent.com/Gael-Carrasco-0459/Act14_6pantallas_JGCA_0459/refs/heads/main/palomera.jpg"
      ),
      const ProductCard(
        name: "Palomera JW rebirth", 
        img: "https://raw.githubusercontent.com/Gael-Carrasco-0459/Act14_6pantallas_JGCA_0459/refs/heads/main/palomera%20rebirth.jpg"
      ),
      const ProductCard(
        name: "Vaso JW rebirth", 
        img: "https://raw.githubusercontent.com/Gael-Carrasco-0459/Act14_6pantallas_JGCA_0459/refs/heads/main/vaso%20rebirth.jpg"
      ),
      const ProductCard(
        name: "Vaso 3d JW rebirth", 
        img: "https://raw.githubusercontent.com/Gael-Carrasco-0459/Act14_6pantallas_JGCA_0459/refs/heads/main/vaso%203d.jpg"
      ),
    ]);
  }
}