# Manos Seguras

**Curso:** Desarrollo de Software II (SIS048) — Ciclo VII  
**Semestre:** 2026-II  
**Universidad Andina del Cusco** — Escuela Profesional de Ingeniería de Sistemas

## Descripción

Manos Seguras es una aplicación móvil desarrollada con **Flutter** y **Dart** en el marco del curso Desarrollo de Software II. El proyecto busca contribuir a la seguridad y bienestar de la comunidad, alineándose con los **Objetivos de Desarrollo Sostenible (ODS)** de las Naciones Unidas.

<!-- TODO: Completar con el ODS específico y la descripción detallada del problema que resuelve -->

## Integrantes

| Nombre | Correo |
|---|---|
| Calderón Vargas Rey | 023200192e@uandina.edu.pe |
| Andia Palomino Rodrigo Inti | 023100172b@uandina.edu.pe |
| Guerra Llave Pedro Luis | 023100493c@uandina.edu.pe |

<!-- TODO: Agregar a los demás integrantes si es proyecto de equipo -->

## Configuración e Instalación

### Prerrequisitos
- [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado
- [Git](https://git-scm.com/downloads) instalado
- Editor de código: [Visual Studio Code](https://code.visualstudio.com/) (recomendado)

### Clonar y ejecutar

```bash
# 1. Clonar el repositorio
git clone https://github.com/tu-usuario/sis048-manos-seguras.git
cd sis048-manos-seguras

# 2. Instalar dependencias
flutter pub get

# 3. Ejecutar la aplicación
flutter run
```

## Estructura del Proyecto

```
manos_seguras/
├── lib/                  # Código fuente principal (Dart)
│   └── main.dart         # Punto de entrada de la aplicación
├── test/                 # Pruebas unitarias y de widget
├── android/              # Configuración nativa Android
├── ios/                  # Configuración nativa iOS
├── web/                  # Configuración para web
├── pubspec.yaml          # Dependencias y metadatos del proyecto
└── README.md             # Este archivo
```

## Convención de Commits

Este proyecto usa [Conventional Commits](https://www.conventionalcommits.org/):

| Tipo | Uso |
|---|---|
| `feat` | Nueva funcionalidad |
| `fix` | Corrección de error |
| `refactor` | Reorganización sin cambio de comportamiento |
| `style` | Cambios de formato/estilo |
| `docs` | Cambios en documentación |
| `test` | Agregar o modificar pruebas |
| `chore` | Tareas de mantenimiento |

## Evolución del Proyecto

| Fase | Unidad | Contenido |
|---|---|---|
| Fase 1 | Unidad I | Estructura base Flutter + mockup navegable |
| Fase 2 | Unidad II | Arquitectura por capas, persistencia local, Riverpod |
| Fase 3 | Unidad III | Firebase, GPS/cámara, GenAI, testing, CI/CD |

## Licencia

Proyecto académico — Universidad Andina del Cusco, 2026.

## Docente

Mtro. Ing. Yover Collantes Valer — ycollantes@uandina.edu.pe
