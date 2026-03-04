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
  
class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;

  void _setPage(int index) => setState(() => _currentIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: Column(
          children: [
            Container(
              color: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SafeArea(
                bottom: false,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('SPIDEY SAURUS', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                    const Icon(Icons.account_circle, color: Colors.white, size: 35),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _navButton("Inicio", 0),
                  _navButton("Productos", 1),
                  _navButton("Conócenos", 2),
                ],
              ),
            ),
          ],
        ),
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildFooter(),
    );
  }

  Widget _navButton(String text, int index) {
    return TextButton(
      onPressed: () => _setPage(index),
      child: Text(text, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildBody() {
    if (_currentIndex == 0) return const InicioPage();
    if (_currentIndex == 1) return const ProductosPage();
    return const ConocenosPage();
  }

  Widget _buildFooter() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network('https://raw.githubusercontent.com/Gael-Carrasco-0459/Gael-Carrasco-0459-Act10_disenio_pagina_JGCA_6J-tree-main/refs/heads/master/%5BCITYPNG.COM%5DHD%20Jurassic%20Park%20Logo%20Transparent%20Background%20-%202000x2000.png', height: 30),
          const SizedBox(height: 5),
          const Text("jesus gael carrasco avitia", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
}
