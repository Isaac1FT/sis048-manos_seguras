import 'package:flutter/material.dart';

import 'app_layout.dart';

// Pantalla temporal de diagnóstico y resumen de auditoría.
// Utiliza AppLayout para determinar el tipo de dispositivo
// según los breakpoints establecidos en la Guia Responsive.

class PantallaResumen extends StatelessWidget {
  const PantallaResumen({super.key});

  @override
  Widget build(BuildContext context) {
    // Ancho total de la pantalla con la API exigida.
    final double anchoPantalla = MediaQuery.sizeOf(context).width;

    // AppLayout centraliza los breakpoints responsivos.
    final AppLayout layout = AppLayout.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF1EFE8),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0F6E56),
        title: const Text('Resumen'),
      ),

      // Padding adaptativo según el tipo de dispositivo.
      body: Padding(
        padding: layout.paddingPantalla,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Panel de diagnóstico temporal.
            // Permite comprobar visualmente el ancho local,
            // el ancho total y la categoría del dispositivo.
            _panelDiagnostico(anchoPantalla, layout),

            const SizedBox(height: 20),

            const Text(
              'RESULTADOS DE LA AUDITORÍA',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F6E56),
                letterSpacing: 1.0,
              ),
            ),

            const SizedBox(height: 16),

            // Adaptación responsiva:
            // En móvil las métricas se muestran verticalmente.
            // En tablet o escritorio se muestran horizontalmente.
            layout.esMobil ? _metricasColumna() : _metricasFila(),

            const Expanded(
              child: Center(
                child: Text(
                  'Contenido de resumen (temporal)',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Panel de diagnóstico temporal.
  // Usa LayoutBuilder para obtener el ancho local disponible.
  // AppLayout determina la categoría utilizando los breakpoints
  // centralizados en app_layout.dart.
  Widget _panelDiagnostico(double anchoPantalla, AppLayout layout) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double anchoLocal = constraints.maxWidth;

        final String categoria;

        if (layout.esMobil) {
          categoria = 'Compacta';
        } else if (layout.esTablet) {
          categoria = 'Media';
        } else {
          categoria = 'Expandida';
        }

        return Container(
          width: double.infinity,
          color: Colors.amber,
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Diagnóstico | Ancho local: '
            '${anchoLocal.toStringAsFixed(1)} pt | '
            'Ancho pantalla: '
            '${anchoPantalla.toStringAsFixed(1)} pt | '
            'Categoría: $categoria',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        );
      },
    );
  }

  // Versión móvil: las métricas se apilan verticalmente.
  Widget _metricasColumna() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _tarjetaMetrica('OPORTUNIDADES OBSERVADAS', '10'),
        _tarjetaMetrica('OPORTUNIDADES CORRECTAS', '8'),
        _tarjetaMetrica('ADHERENCIA', '80.0 %'),
      ],
    );
  }

  // Versión tablet/escritorio: las métricas se distribuyen
  // horizontalmente utilizando Expanded.
  Widget _metricasFila() {
    return Row(
      children: [
        Expanded(child: _tarjetaMetrica('OPORTUNIDADES OBSERVADAS', '10')),
        const SizedBox(width: 12),
        Expanded(child: _tarjetaMetrica('OPORTUNIDADES CORRECTAS', '8')),
        const SizedBox(width: 12),
        Expanded(child: _tarjetaMetrica('ADHERENCIA', '80.0 %')),
      ],
    );
  }

  // Tarjeta visual de una métrica del resumen.
  // Los valores son temporales para comprobar el diseño responsivo.
  Widget _tarjetaMetrica(String titulo, String valor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0F6E56),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            valor,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
