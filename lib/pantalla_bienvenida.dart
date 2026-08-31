import 'package:flutter/material.dart';

class PantallaBienvenida extends StatelessWidget {
  const PantallaBienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFF0F6E56), // Tu color institucional
        // JUSTIFICACIÓN 1: Se usa EdgeInsets.all para dar un margen interno
        // uniforme en los 4 lados, evitando que los textos toquen los bordes de la pantalla.
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo o imagen de marca
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPY0T7dma0yFHciFo_-Jssq-Ttvqv5NNgyxLXix_fMpaM9KYkNWJbOePQ&s=10',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 16.0), // Separación simple entre hermanos

            // Nombre de la app
            const Text(
              'ManosSeguras',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8.0),

            // Eslogan / subtítulo
            const Text(
              'Auditoría de adherencia y técnica de higiene',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 16.0),

            // Referencia normativa (Extraído a método)
            _buildReferenciaNormativa(),

            // SizedBox grande para empujar visualmente el resto de elementos hacia abajo
            const SizedBox(height: 60.0),

            // Ícono representativo de salud/higiene de manos (Movido aquí)
            // JUSTIFICACIÓN 2: Se usa EdgeInsets.only para aplicar un padding
            // exclusivamente en la parte inferior, separando el ícono de la insignia ODS.
            Container(
              width: 48.0, // Zona táctil accesible mínima de 48x48 dp
              height: 48.0,
              padding: const EdgeInsets.only(bottom: 8.0),
              child: const Icon(
                Icons.clean_hands,
                size: 40.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8.0),

            // Insignia ODS 3 (Extraído a método)
            _buildOdsBadge(),
          ],
        ),
      ),
    );
  }

  // FASE 4: Extracción de método privado 1
  Widget _buildReferenciaNormativa() {
    // JUSTIFICACIÓN 3: Se usa EdgeInsets.symmetric para aplicar padding
    // horizontal exclusivamente, permitiendo centrar el texto largo sin alterar su separación vertical.
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: const Text(
        'Basado en la Guía Técnica RM N.° 255-2016/MINSA',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 12,
          color: Colors.white60,
        ),
      ),
    );
  }

  // FASE 4: Extracción de método privado 2
  Widget _buildOdsBadge() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.health_and_safety, color: Colors.green),
        SizedBox(width: 8.0), // Separación simple entre hermanos
        Text(
          'ODS 3 · Salud y Bienestar',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
