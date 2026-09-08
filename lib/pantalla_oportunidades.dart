import 'package:flutter/material.dart';
import 'tarjeta_oportunidad.dart';

// Pantalla 3: muestra dos tarjetas de oportunidad de higiene de manos.
// La primera activa (colores normales) y la segunda atenuada (activa: false),
// replicando el efecto visual del formulario oficial GERESA Cusco
// sin logica condicional real (se implementara en la Unidad II).
class PantallaOportunidades extends StatelessWidget {
  const PantallaOportunidades({super.key});

  // Datos tomados literalmente del instrumento oficial (Seccion 10 de la guia).
  static const List<String> _indicaciones = [
    'Antes de tocar al paciente',
    'Antes de realizar una tarea limpia/aseptica',
    'Despues del riesgo de exposicion a fluidos corporales',
    'Despues de tocar al paciente',
    'Despues del contacto con el entorno del paciente',
  ];

  static const List<String> _acciones = [
    'Guantes',
    'Lavado de manos (LV)',
    'Omision',
    'Friccion de manos (FM)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1EFE8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F6E56),
        title: const Text('Registro de oportunidad'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            // Oportunidad 01: activa, colores normales
            TarjetaOportunidad(
              numero: 'OPORTUNIDAD 01',
              indicaciones: _indicaciones,
              acciones: _acciones,
            ),
            // Oportunidad 02: inactiva, texto atenuado en gris.
            // Replica visualmente la regla del formulario que habilita
            // la siguiente oportunidad solo cuando se completa la anterior.
            TarjetaOportunidad(
              numero: 'OPORTUNIDAD 02',
              indicaciones: _indicaciones,
              acciones: _acciones,
              activa: false,
            ),
          ],
        ),
      ),
    );
  }
}
