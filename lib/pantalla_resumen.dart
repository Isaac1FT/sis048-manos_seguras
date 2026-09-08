import 'package:flutter/material.dart';

// Pantalla temporal de diagnóstico (Guía responsive).
// Muestra el ancho de pantalla, el ancho local y la categoría del layout.
class PantallaResumen extends StatelessWidget {
  const PantallaResumen({super.key});

  @override
  Widget build(BuildContext context) {
    // (2) Ancho total de la pantalla con la API exigida.
    final double anchoPantalla = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: const Color(0xFFF1EFE8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F6E56),
        title: const Text('Resumen'),
      ),
      // (4) Panel visible en el body del Scaffold dentro de una Column.
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _panelDiagnostico(anchoPantalla),
          const Expanded(
            child: Center(
              child: Text(
                'Contenido de resumen (temporal)',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // (3) Panel de diagnóstico temporal con fondo ámbar.
  // Usa LayoutBuilder para leer el ancho local disponible y lo combina
  // con el ancho de pantalla para clasificar la categoría:
  // Compacta < 600, Media < 840, Expandida >= 840.
  Widget _panelDiagnostico(double anchoPantalla) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double anchoLocal = constraints.maxWidth;

        final String categoria;
        if (anchoPantalla < 600) {
          categoria = 'Compacta';
        } else if (anchoPantalla < 840) {
          categoria = 'Media';
        } else {
          categoria = 'Expandida';
        }

        return Container(
          width: double.infinity,
          color: Colors.amber,
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Diagnóstico | Ancho local: ${anchoLocal.toStringAsFixed(1)} pt | '
            'Ancho pantalla: ${anchoPantalla.toStringAsFixed(1)} pt | '
            'Categoría: $categoria',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        );
      },
    );
  }
}
