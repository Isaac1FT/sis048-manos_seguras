import 'package:flutter/material.dart';

class AppLayout {
  final double anchoPantalla;
  const AppLayout(this.anchoPantalla);

  // Instanciador usando BuildContext y MediaQuery de la Sesión
  factory AppLayout.of(BuildContext context) {
    return AppLayout(MediaQuery.sizeOf(context).width);
  }

  // Breakpoints
  bool get esMobil => anchoPantalla < 600;
  bool get esTablet => anchoPantalla >= 600 && anchoPantalla < 840;
  bool get esEscritorio => anchoPantalla >= 840;

  // Margen de pantalla adaptativo según clase de dispositivo
  EdgeInsets get paddingPantalla => esMobil
      ? const EdgeInsets.all(16)
      : const EdgeInsets.symmetric(horizontal: 32, vertical: 24);
}
