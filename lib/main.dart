/*
 * ==========================================================
 * App Móvil de Auditoría a la Adherencia y Técnica de Higiene de Manos
 * Guía de Práctica N.° 2 - Desarrollo de Software II (SIS048)
 * 
 * Integrantes del equipo:
 * 1. Isaac
 * 2. ---
 * 3. ---
 * ==========================================================
 */

import 'package:flutter/material.dart';
import 'pantalla_personal.dart';

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
      theme: ThemeData(
        primaryColor: const Color(0xFF0F6E56),
      ),
      home: const PantallaPersonal(),
    );
  }
}