import 'package:flutter/material.dart';
import 'package:myapp/paginas/product_card.dart';

class JuguetesPage extends StatelessWidget {
  const JuguetesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return gridBuilder(2, [
      const ProductCard(name: "T rex", img: "https://raw.githubusercontent.com/Gael-Carrasco-0459/Gael-Carrasco-0459-Act10_disenio_pagina_JGCA_6J-tree-main/refs/heads/master/61IaH3HKgdL._AC_UF894%2C1000_QL80_.jpg"),
      const ProductCard(name: "Velociraptor", img: "https://raw.githubusercontent.com/Gael-Carrasco-0459/Gael-Carrasco-0459-Act10_disenio_pagina_JGCA_6J-tree-main/refs/heads/master/61YzH1ITNiS.jpg"),
      const ProductCard(name: "Triceratops", img: "https://raw.githubusercontent.com/Gael-Carrasco-0459/Gael-Carrasco-0459-Act10_disenio_pagina_JGCA_6J-tree-main/refs/heads/master/712-F1uIWBL.jpg"),
      const ProductCard(name: "Brachiosaurus", img: "https://raw.githubusercontent.com/Gael-Carrasco-0459/Gael-Carrasco-0459-Act10_disenio_pagina_JGCA_6J-tree-main/refs/heads/master/71nUD4SpNHL._AC_UF894%2C1000_QL80_.jpg"),
    ]);
  }
}