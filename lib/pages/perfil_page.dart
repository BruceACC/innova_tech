import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        backgroundColor: Color(0xFFC0C0C0),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.05),
            Center(
              child: CircleAvatar(
                radius: size.width * 0.15,
                backgroundColor: Colors.green[200],
                child: Icon(
                  Icons.person,
                  size: size.width * 0.15,
                  color: Color(0xFF171717),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Center(
              child: Text(
                'Juan Pérez',
                style: TextStyle(
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800],
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Center(
              child: Text(
                'juan.perez@email.com',
                style: TextStyle(
                  fontSize: size.width * 0.04,
                  color: Colors.grey[600],
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Divider(color: Colors.grey),
            ListTile(
              leading: Icon(Icons.edit, color: Colors.green),
              title: Text('Editar Perfil'),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                // Acción para editar perfil
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Editar perfil no implementado')),
                );
              },
            ),
            Divider(color: Colors.grey),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.green),
              title: Text('Configuraciones'),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                // Acción para configuraciones
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Configuraciones no implementadas')),
                );
              },
            ),
            Divider(color: Colors.grey),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text('Cerrar Sesión'),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                // Acción para cerrar sesión
                Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
