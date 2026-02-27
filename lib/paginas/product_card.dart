import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String img;
  const ProductCard({super.key, required this.name, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: const Color(0xFF1E1E1E), borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(flex: 4, child: ClipRRect(borderRadius: const BorderRadius.vertical(top: Radius.circular(12)), child: Image.network(img, fit: BoxFit.cover))),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                  SizedBox(
                    width: double.infinity,
                    height: 35,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {},
                      child: const Text("COMPRAR", style: TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Función auxiliar para crear el Grid
Widget gridBuilder(int columns, List<Widget> cards) {
  return GridView.count(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: columns,
    crossAxisSpacing: 15,
    mainAxisSpacing: 15,
    childAspectRatio: columns == 1 ? 1.3 : 0.65,
    children: cards,
  );
}