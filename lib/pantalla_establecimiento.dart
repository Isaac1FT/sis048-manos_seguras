import 'package:flutter/material.dart';

class PantallaEstablecimiento extends StatelessWidget {
  const PantallaEstablecimiento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1EFE8), // Fondo beige institucional
      body: SafeArea(
        child: Column(
          children: [
            _encabezadoInstitucional(),
            // Expanded permite que el contenido inferior ocupe el resto de la pantalla
            Expanded(child: _camposEstablecimiento()),
          ],
        ),
      ),
    );
  }

  // Contenido de los campos del formulario
  Widget _camposEstablecimiento() {
    return Padding(
      // JUSTIFICACIÓN: 20.0 de padding total da una respiración interna uniforme
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _tarjetaCampo('CÓDIGO ÚNICO', '00458213'),
          _tarjetaCampo(
            'NOMBRE DEL ESTABLECIMIENTO',
            'Hospital Regional del Cusco',
          ),
          _tarjetaCampo('CATEGORÍA DEL ESTABLECIMIENTO', 'III-1'),
        ],
      ),
    );
  }

  // Encabezado institucional (Reutilizado y adaptado de la Guía N.° 2)
  Widget _encabezadoInstitucional() {
    return Container(
      width: double.infinity,
      // JUSTIFICACIÓN: 24.0 vertical da altura al bloque y 20.0 horizontal alinea con el contenido
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 20.0),
      decoration: const BoxDecoration(
        color: Color(0xFF0F6E56), // Verde institucional "ManosSeguras"
      ),
      child: Column(
        children: [
          const Icon(
            Icons.clean_hands,
            color: Colors.white,
            size: 40.0, // JUSTIFICACIÓN: Tamaño idóneo para destacar como logotipo de cabecera
          ),
          const SizedBox(height: 8),
          const Text(
            'ManosSeguras',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0, // JUSTIFICACIÓN: Jerarquía clara como título principal de la app
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Registro de establecimiento',
            style: TextStyle(color: Color(0xFFC7E9DD), fontSize: 13),
          ),
        ],
      ),
    );
  }

  // Widget reutilizable para las tarjetas de campo (Container con BoxDecoration)
  Widget _tarjetaCampo(String etiqueta, String valor) {
    return Container(
      // JUSTIFICACIÓN: 14.0 separa verticalmente los campos para que no se toquen entre sí
      margin: const EdgeInsets.only(bottom: 14.0),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(
          10.0,
        ), // JUSTIFICACIÓN: Bordes redondeados modernos
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            etiqueta,
            style: TextStyle(
              fontSize: 11,
              color: Colors.grey.shade600,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            valor,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
