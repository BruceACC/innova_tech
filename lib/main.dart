import 'package:flutter/material.dart';
import 'package:innovatech/pages/home_page.dart';
import 'package:innovatech/pages/inicio_page.dart';
import 'package:innovatech/pages/login_page.dart';
import 'package:innovatech/pages/perfil_page.dart';
import 'package:innovatech/pages/signup_page.dart';
import 'package:innovatech/pages/simulacion/sim_historial.dart';
import 'package:innovatech/pages/simulacion/sim_paso1.dart';
import 'package:innovatech/pages/simulacion/sim_paso10.dart';
import 'package:innovatech/pages/simulacion/sim_paso2.dart';
import 'package:innovatech/pages/simulacion/sim_paso3.dart';
import 'package:innovatech/pages/simulacion/sim_paso4.dart';
import 'package:innovatech/pages/simulacion/sim_paso5.dart';
import 'package:innovatech/pages/simulacion/sim_paso6.dart';
import 'package:innovatech/pages/simulacion/sim_paso7.dart';
import 'package:innovatech/pages/simulacion/sim_paso8.dart';
import 'package:innovatech/pages/simulacion/sim_paso9.dart';
import 'package:innovatech/pages/simulacion/sim_resultado.dart';
import 'package:innovatech/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fondo MiVivienda',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, // Tema claro
      darkTheme: AppTheme.darkTheme, // Tema oscuro (opcional)
      themeMode: ThemeMode.system, // Cambia automáticamente según el sistema
      initialRoute: '/home', // Ruta inicial
      routes: {
        '/home': (context) => HomePage(),
        '/inicio': (context) => InicioPage(), // Página de inicio
        '/login': (context) => LoginPage(), // Página de login
        '/signup': (context) => SignUpPage(), // Página de registro
        '/simPaso1': (context) => SimPaso1Page(), // Paso 1
        '/simPaso2': (context) => SimPaso2Page(), // Paso 2
        '/simPaso3': (context) => SimPaso3Page(), // Paso 3
        '/simPaso4': (context) => SimPaso4Page(), // Paso 4
        '/simPaso5': (context) => SimPaso5Page(), // Paso 5
        '/simPaso6': (context) => SimPaso6Page(),
        '/simPaso7': (context) => SimPaso7Page(),
        '/simPaso8': (context) => SimPaso8Page(),
        '/simPaso9': (context) => SimPaso9Page(),
        '/simPaso10': (context) => SimPaso10Page(),
        '/simHistorial': (context) => SimHistorialPage(), // Historial de simulaciones
        '/simResultado': (context) => SimResultadoPage(), // Resultado de simulación
        '/perfil': (context) => PerfilPage(), // Asegúrate de incluir esta línea

      },
    );
  }
}
