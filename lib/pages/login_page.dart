import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Iniciar Sesión'),
        backgroundColor: Color(0xFF171717),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.05),
            Text(
              'Bienvenido de nuevo',
              style: TextStyle(
                fontSize: size.width * 0.06,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              'Por favor, ingrese sus credenciales para continuar.',
              style: TextStyle(
                fontSize: size.width * 0.04,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.05),
            _buildTextField(
              controller: _usernameController,
              label: 'Usuario',
              hint: 'Ingrese su usuario',
              icon: Icons.person,
            ),
            SizedBox(height: size.height * 0.02),
            _buildTextField(
              controller: _passwordController,
              label: 'Contraseña',
              hint: 'Ingrese su contraseña',
              icon: Icons.lock,
              obscureText: true,
            ),
            SizedBox(height: size.height * 0.05),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.2,
                  vertical: size.height * 0.02,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                _handleLogin(context);
              },
              child: Text(
                'Iniciar Sesión',
                style: TextStyle(
                  fontSize: size.width * 0.05,
                  color: Color(0xFF171717),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text(
                '¿No tienes cuenta? Regístrate aquí',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: size.width * 0.04,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
    required IconData icon,
    bool obscureText = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  void _handleLogin(BuildContext context) {
    final username = _usernameController.text.trim();
    final password = _passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      _showMessage(context, 'Por favor, complete todos los campos.');
    } else {
      // Aquí puedes agregar lógica para autenticar al usuario
      _showMessage(context, 'Inicio de sesión exitoso.');
      Navigator.pushNamed(context, '/inicio');
    }
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
