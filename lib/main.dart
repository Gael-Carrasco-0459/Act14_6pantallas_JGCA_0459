import 'package:flutter/material.dart';
import 'package:myapp/paginas/inicio.dart';
import 'package:myapp/paginas/productos.dart';
import 'package:myapp/paginas/conocenos.dart';

void main() => runApp(const SpideySaurusApp());

class SpideySaurusApp extends StatelessWidget {
  const SpideySaurusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spidey Saurus',
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: const MainLayout(),
      routes: {
        '/inicio': (context) => const InicioPage(),
        '/productos': (context) => const ProductosPage(),
        '/conocenos': (context) => const ConocenosPage(),
        '/juguetes': (context) => const JuguetesPage(),
        '/estatuas': (context) => const EstatuasPage(),
        '/promocionales': (context) => const PromocionalesPage(),
        '/ropa': (context) => const RopaPage(),
      }
    );
  }
}

