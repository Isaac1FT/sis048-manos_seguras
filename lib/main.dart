/*
 * ==========================================================
 * App Movil de Auditoria a la Adherencia y Tecnica de Higiene de Manos
 * Guia de Practica N. 3 - Desarrollo de Software II (SIS048)
 *
 * Integrantes del equipo:
 * 1. Isaac
 * 2. ---
 * 3. ---
 * ==========================================================
 */

import 'package:flutter/material.dart';

import 'pantalla_bienvenida.dart';
import 'tarjeta_momentos.dart';
import 'pantalla_establecimiento.dart';
import 'pantalla_personal.dart';
import 'pantalla_oportunidades.dart';
import 'pantalla_resumen.dart';

void main() {
  runApp(const AppAuditoriaHigiene());
}

class AppAuditoriaHigiene extends StatelessWidget {
  const AppAuditoriaHigiene({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auditoría de Higiene de Manos',
      theme: ThemeData(primaryColor: const Color(0xFF0F6E56)),
      home: const PantallaResumen(),
    );
  }
}
