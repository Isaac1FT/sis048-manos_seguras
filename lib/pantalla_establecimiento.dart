import 'package:flutter/material.dart';

// 1. Importamos el archivo compartido que ya contiene tus dos widgets públicos
import 'widgets_comunes.dart';

class PantallaEstablecimiento extends StatelessWidget {
  const PantallaEstablecimiento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1EFE8),
      body: SafeArea(
        child: Column(
          children: [
            // 2. Invocamos el encabezado común pasando el subtítulo correspondiente
            encabezadoInstitucional('Registro de establecimiento'),
            Expanded(child: _camposEstablecimiento()),
          ],
        ),
      ),
    );
  }

  Widget _camposEstablecimiento() {
    return Padding(
      // Relleno de la guía para dar un espaciado uniforme de 20 px
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 3. Invocamos las tarjetas de campo públicas de widgets_comunes.dart
          tarjetaCampo('CÓDIGO ÚNICO', '00458213'),
          tarjetaCampo(
            'NOMBRE DEL ESTABLECIMIENTO',
            'Hospital Regional del Cusco',
          ),
          tarjetaCampo('CATEGORÍA DEL ESTABLECIMIENTO', 'III-1'),
        ],
      ),
    );
  }
}
