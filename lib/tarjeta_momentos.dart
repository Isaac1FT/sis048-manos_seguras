import 'package:flutter/material.dart';

class TarjetaCincoMomentos extends StatelessWidget {
  const TarjetaCincoMomentos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fondo gris claro para que la tarjeta blanca resalte con su sombra
      backgroundColor: const Color(0xFFF1EFE8),
      body: Center(
        child: Container(
          // JUSTIFICACIÓN 4: Se usa EdgeInsets.symmetric para aplicar margin
          // horizontal y vertical uniforme, separando la tarjeta de los bordes de la pantalla.
          margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
          // JUSTIFICACIÓN 5: Se usa EdgeInsets.all para dar un padding interno
          // uniforme a toda la tarjeta, evitando que el título y las filas toquen los bordes redondeados.
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
            mainAxisSize: MainAxisSize
                .min, // Para que la tarjeta envuelva justo su contenido
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
              const SizedBox(
                  height: 20.0), // Separación entre el título y la lista

              // Llamadas al método extraído para cada momento
              _itemMomento(1, Icons.accessibility_new,
                  'Antes del contacto con el paciente'),
              _itemMomento(
                  2, Icons.healing, 'Antes de realizar una tarea aséptica'),
              _itemMomento(3, Icons.water_drop,
                  'Después del riesgo de exposición a fluidos'),
              _itemMomento(
                  4, Icons.person, 'Después del contacto con el paciente'),
              _itemMomento(5, Icons.cleaning_services,
                  'Después del contacto con el entorno'),
            ],
          ),
        ),
      ),
    );
  }

  // FASE 4: Extracción de método privado para los items repetidos
  Widget _itemMomento(int numero, IconData icono, String texto) {
    // JUSTIFICACIÓN 6: Se usa EdgeInsets.only para aplicar un padding
    // exclusivamente en la parte inferior, separando visualmente cada fila de la siguiente.
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          // Número del momento
          Container(
            width: 28,
            height: 28,
            decoration: const BoxDecoration(
              color: Color(0xFF0F6E56),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '$numero',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const SizedBox(
              width: 12.0), // Separación horizontal entre el número y el ícono

          // Ícono del momento
          Icon(
            icono,
            color: const Color(0xFF0F6E56),
            size: 24.0,
          ),
          const SizedBox(
              width: 12.0), // Separación horizontal entre el ícono y el texto

          // Texto del momento
          // NOTA: Se omite Expanded por restricción de la Sesión 7.
          // El texto es lo suficientemente corto para caber en una línea en la mayoría de pantallas.
          Flexible(
            // Cambio a Flexible para evitar overflow si el texto es largo en pantallas pequeñas
            child: Text(
              texto,
              style: const TextStyle(fontSize: 14.0, color: Colors.black87),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}
