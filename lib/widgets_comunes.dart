import 'package:flutter/material.dart';

Widget tarjetaCampo(String etiqueta, String valor) {
  return Container(
    margin: const EdgeInsets.only(bottom: 12),
    padding: const EdgeInsets.symmetric(
      horizontal: 14,
      vertical: 12,
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(10),
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
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

Widget encabezadoInstitucional(String subtitulo) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(
      vertical: 24,
      horizontal: 20,
    ),
    decoration: const BoxDecoration(
      color: Color(0xFF0F6E56),
    ),
    child: Column(
      children: [
        const Icon(
          Icons.clean_hands,
          color: Colors.white,
          size: 48,
        ),
        const SizedBox(height: 8),
        const Text(
          'ManosSeguras',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitulo,
          style: const TextStyle(
            color: Color(0xFFC7E9DD),
            fontSize: 13,
          ),
        ),
      ],
    ),
  );
}
