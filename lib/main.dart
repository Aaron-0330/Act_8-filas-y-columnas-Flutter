import 'package:flutter/material.dart';

void main() => runApp(const AppHAGALO());

class AppHAGALO extends StatelessWidget {
  const AppHAGALO({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HAGALO',
      home: HerramientasFilaColumna(),
    );
  }
}

class HerramientasFilaColumna extends StatelessWidget {
  const HerramientasFilaColumna({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos un color oscuro constante para todos los iconos y textos
    const Color colorContenido = Color(0xFF1A237E); // Un azul muy oscuro casi negro

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HAGALO",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        actions: const [
          Icon(Icons.person, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.build, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Fila 1: Usamos tonos de azul claro para que el texto oscuro resalte
            crearFila(
              "Herramientas", Icons.handyman, Colors.blue[200]!,
              "Construcción", Icons.foundation, Colors.blue[100]!,
              colorContenido,
            ),
            const SizedBox(height: 15),

            // Fila 2
            crearFila(
              "Jardín", Icons.local_florist, Colors.cyan[100]!,
              "Luces", Icons.lightbulb, Colors.orange[100]!,
              colorContenido,
            ),
            const SizedBox(height: 15),

            // Fila 3
            crearFila(
              "Pintura", Icons.format_paint, Colors.teal[100]!,
              "Baños", Icons.bathtub, Colors.indigo[50]!,
              colorContenido,
            ),
          ],
        ),
      ),
    );
  }

  Widget crearFila(String texto1, IconData icono1, Color fondo1, String texto2, IconData icono2, Color fondo2, Color colorTexto) {
    return Row(
      children: [
        _crearElemento(texto1, icono1, fondo1, colorTexto),
        const SizedBox(width: 15),
        _crearElemento(texto2, icono2, fondo2, colorTexto),
      ],
    );
  }

  Widget _crearElemento(String texto, IconData icono, Color fondo, Color colorTexto) {
    return Expanded(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: fondo,
          borderRadius: BorderRadius.circular(15), // Esquinas redondeadas
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 5,
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icono, color: colorTexto, size: 35),
            const SizedBox(height: 8),
            Text(
              texto,
              style: TextStyle(
                color: colorTexto,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}