import 'package:flutter/material.dart';
import 'package:innovatech/pages/perfil_page.dart';
import 'package:innovatech/pages/simulacion/sim_historial.dart';

import '../widgets/navbar.dart';

class InicioPage extends StatefulWidget {
  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    InicioContent(), // Página de inicio
    SimHistorialPage(), // Página de historial
    PerfilPage(), // Página de perfil (asegúrate de que esta línea está presente)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        backgroundColor: Color(0xFFC0C0C0),
        elevation: 0,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

// Este sería el contenido principal de la página de inicio
class InicioContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height * 0.05),
          Text(
            'Bienvenido a Fondo InnovaTech',
            style: TextStyle(
              fontSize: size.width * 0.06,
              fontWeight: FontWeight.bold,
              color: Color(0xFF171717),
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            'Encuentra el hogar de tus sueños al mejor precio.',
            style: TextStyle(
              fontSize: size.width * 0.04,
              color: Color(0xFF171717),
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Expanded(
            child: ListView(
              children: [
                _buildFeatureCard(
                  context,
                  title: 'Nueva Simulación',
                  description: 'Realiza una nueva simulación de crédito.',
                  icon: Icons.calculate,
                  route: '/simPaso1',
                ),
                _buildFeatureCard(
                  context,
                  title: 'Historial de Simulaciones',
                  description: 'Consulta tus simulaciones anteriores.',
                  icon: Icons.history,
                  route: '/simHistorial',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard(
      BuildContext context, {
        required String title,
        required String description,
        required IconData icon,
        required String route,
      }) {
    final size = MediaQuery.of(context).size;

    return Card(
      margin: EdgeInsets.only(bottom: size.height * 0.02),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, color: Color(0xFF171717), size: size.width * 0.1),
        title: Text(
          title,
          style: TextStyle(
            fontSize: size.width * 0.05,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(description, style: TextStyle(color: Colors.grey[700])),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }
}


