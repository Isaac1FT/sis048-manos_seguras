import 'package:flutter/material.dart';

// Tarjeta de registro de una oportunidad de higiene de manos.
// Estructura de tres columnas usando Row + Expanded (Sesion 7).
// Proporcion flex 1:2:1 basada en el formulario oficial GERESA Cusco.

class TarjetaOportunidad extends StatelessWidget {
  final String numero;
  final List<String> indicaciones;
  final List<String> acciones;
  final bool activa;

  const TarjetaOportunidad({
    super.key,
    required this.numero,
    required this.indicaciones,
    required this.acciones,
    this.activa = true,
  });

  @override
  Widget build(BuildContext context) {
    // Si la tarjeta no esta activa, el texto se muestra atenuado.
    // Esto replica visualmente la logica condicional del formulario oficial
    // sin requerir StatefulWidget (que se vera en la Unidad II).
    final Color colorTexto = activa ? Colors.black87 : Colors.grey.shade400;

    return Container(
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Columna 1: numero de oportunidad (flex 1 = 25% del ancho)
          Expanded(
            flex: 1,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Text(
                  numero,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: colorTexto,
                  ),
                ),

                // Indicador visual del estado de la oportunidad.
                // Verde: oportunidad activa.
                // Rojo: oportunidad inactiva.
                Positioned(
                  top: -4,
                  right: 10,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: activa ? Colors.green : Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Columna 2: indicaciones (flex 2 = 50% del ancho).
          // El mayor espacio permite que textos normativos largos
          // se muestren en dos lineas sin truncarse.
          Expanded(flex: 2, child: _listaOpciones(indicaciones, colorTexto)),

          // Columna 3: acciones (flex 1 = 25% del ancho)
          Expanded(flex: 1, child: _listaOpciones(acciones, colorTexto)),
        ],
      ),
    );
  }

  // Lista vertical de opciones con icono de radio estatico.
  // Flexible (no Expanded) para que el Text pueda saltar de linea
  // sin forzar un ancho exacto, evitando RenderFlex overflowed.
  Widget _listaOpciones(List<String> opciones, Color colorTexto) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: opciones.map((texto) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.radio_button_unchecked, size: 16, color: colorTexto),
              const SizedBox(width: 6),

              // Flexible permite que el Text ocupe el espacio restante
              // y salte de linea cuando el texto es largo,
              // sin desbordar el Row.
              Flexible(
                child: Text(
                  texto,
                  style: TextStyle(fontSize: 12, color: colorTexto),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
