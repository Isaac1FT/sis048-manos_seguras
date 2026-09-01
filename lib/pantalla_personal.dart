import 'package:flutter/material.dart';
import 'widgets_comunes.dart';

class PantallaPersonal extends StatelessWidget {
  const PantallaPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1EFE8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F6E56),
        elevation: 0,
        title: const Text(
          'Observador y personal observado',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.3,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _tituloSeccion('OBSERVADOR'),
            const SizedBox(height: 6),
            tarjetaCampo(
              'DNI o CARNET DE EXTRANJERÍA',
              '45821347',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'NOMBRE COMPLETO DEL OBSERVADOR',
              'Thiago Benítez Flores',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'FECHA DE NACIMIENTO',
              '15/03/1985',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'EDAD',
              '41 años',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'SEXO',
              'Masculino',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'CORREO ELECTRÓNICO',
              'thiago.benitez@email.com',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'TELÉFONO DE CONTACTO',
              '987 654 321',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'INSTITUCIÓN DE PROCEDENCIA',
              'Hospital Nacional Dos de Mayo',
            ),
            const SizedBox(height: 28),
            
            _tituloSeccion('PERSONAL OBSERVADO'),
            const SizedBox(height: 6),
            tarjetaCampo(
              'DNI o CARNET DE EXTRANJERÍA',
              '76543210',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'NOMBRE COMPLETO DEL OBSERVADO',
              'María Gómez Sánchez',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'FECHA DE NACIMIENTO',
              '22/07/1990',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'EDAD',
              '36 años',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'SEXO',
              'Femenino',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'CATEGORÍA PROFESIONAL',
              'Enfermera Especialista',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'ÁREA DE TRABAJO',
              'Unidad de Cuidados Intensivos',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'AÑOS DE EXPERIENCIA',
              '12 años',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'NÚMERO DE COLEGIATURA',
              'CEP 45678',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'TURNO DE TRABAJO',
              'Turno Noche (8pm - 8am)',
            ),
            const SizedBox(height: 28),
            
            _tituloSeccion('INFORMACIÓN ADICIONAL'),
            const SizedBox(height: 6),
            tarjetaCampo(
              'FECHA DE OBSERVACIÓN',
              '31/08/2026',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'HORA DE INICIO',
              '20:00 hrs',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'HORA DE TÉRMINO',
              '23:00 hrs',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'DURACIÓN ESTIMADA',
              '3 horas',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'NÚMERO DE OBSERVACIÓN',
              'OB-2026-0847',
            ),
            const SizedBox(height: 10),
            tarjetaCampo(
              'ESTADO',
              'En progreso',
            ),
            
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _tituloSeccion(String texto) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6, left: 2),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Color(0xFF0F6E56),
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}