import 'package:flutter/material.dart';

// Pantalla de Los 5 Momentos para la Higiene de Manos.
// Guia N.4: se reemplaza la lista vertical por una nube de etiquetas
// usando el widget Wrap (Sesion 8) para que las pastillas se
// redistribuyan automaticamente en multiples filas cuando el ancho
// de la pantalla se reduce.
class TarjetaCincoMomentos extends StatelessWidget {
  const TarjetaCincoMomentos({super.key});

  // Lista de los 5 momentos segun la OMS / MINSA.
  static const List<String> _momentos = [
    'Antes del contacto con el paciente',
    'Antes de realizar una tarea aseptica',
    'Despues del riesgo de exposicion a fluidos',
    'Despues del contacto con el paciente',
    'Despues del contacto con el entorno',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1EFE8),
      body: Center(
        child: Container(
          // JUSTIFICACION: EdgeInsets.symmetric separa la tarjeta
          // de los bordes de la pantalla de forma uniforme.
          margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
          // JUSTIFICACION: EdgeInsets.all da un padding interno
          // uniforme evitando que el contenido toque los bordes redondeados.
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Los 5 Momentos para la Higiene de Manos',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0F6E56),
                ),
              ),
              const SizedBox(height: 20.0),

              // GUIA 4 — Nube de etiquetas con Wrap.
              // spacing: separacion horizontal entre etiquetas en la misma fila.
              // runSpacing: separacion vertical entre filas de etiquetas.
              // Las etiquetas se redistribuyen automaticamente al reducir
              // el ancho de la ventana, sin necesidad de logica explicita.
              Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: List.generate(_momentos.length, (indice) {
                  return _etiquetaMomento(indice + 1, _momentos[indice]);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Cada momento se muestra como una pastilla (Container con bordes
  // redondeados) usando el verde institucional de la app.
  Widget _etiquetaMomento(int numero, String texto) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xFF0F6E56),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Numero del momento en un circulo blanco
          Container(
            width: 22,
            height: 22,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '$numero',
                style: const TextStyle(
                  color: Color(0xFF0F6E56),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          // Texto del momento
          Text(
            texto,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
