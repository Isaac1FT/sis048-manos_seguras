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

void main() {
  runApp(const AppAuditoriaHigiene());
}

class AppAuditoriaHigiene extends StatelessWidget {
  const AppAuditoriaHigiene({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ManosSeguras',
      theme: ThemeData(
        primaryColor: const Color(0xFF0F6E56),
      ),
      // Rutas nombradas para navegar entre las pantallas de la app.
      // La pantalla inicial es la de bienvenida (Guia N.2).
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaBienvenida(),
        '/momentos': (context) => const TarjetaCincoMomentos(),
        '/establecimiento': (context) => const PantallaEstablecimiento(),
        '/personal': (context) => const PantallaPersonal(),
        '/oportunidades': (context) => const PantallaOportunidades(),
      },
    );
  }
}