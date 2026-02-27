import 'package:flutter/material.dart';
import 'package:myapp/paginas/juguetes.dart';
import 'package:myapp/paginas/estatuas.dart';
import 'package:myapp/paginas/promocionales.dart';
import 'package:myapp/paginas/ropa.dart';

class ProductosPage extends StatefulWidget {
  const ProductosPage({super.key});

  @override
  State<ProductosPage> createState() => _ProductosPageState();
}

class _ProductosPageState extends State<ProductosPage> {
  String categoriaActual = "juguetes";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.orange,
          width: double.infinity,
          child: Wrap(
            alignment: WrapAlignment.center,
            children: ["juguetes", "estatuas", "promocionales", "ropa"].map((cat) {
              return TextButton(
                onPressed: () => setState(() => categoriaActual = cat),
                child: Text(cat.toUpperCase(), 
                  style: TextStyle(color: Colors.black, fontWeight: categoriaActual == cat ? FontWeight.bold : FontWeight.normal)),
              );
            }).toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            categoriaActual.toUpperCase(),
            style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300, letterSpacing: 2),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(15),
            child: _buildGridPorCategoria(),
          ),
        ),
      ],
    );
  }

  Widget _buildGridPorCategoria() {
    switch (categoriaActual) {
      case "juguetes": return const JuguetesPage();
      case "estatuas": return const EstatuasPage();
      case "promocionales": return const PromocionalesPage();
      case "ropa": return const RopaPage();
      default: return const JuguetesPage();
    }
  }
}