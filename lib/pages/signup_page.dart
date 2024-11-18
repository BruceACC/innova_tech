import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Usuario'),
        backgroundColor: Color(0xFF171717),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.05),
              Text(
                'Crea una nueva cuenta',
                style: TextStyle(
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Text(
                'Rellene los campos a continuación para registrarse.',
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
                controller: _emailController,
                label: 'Correo Electrónico',
                hint: 'Ingrese su correo electrónico',
                icon: Icons.email,
              ),
              SizedBox(height: size.height * 0.02),
              _buildTextField(
                controller: _passwordController,
                label: 'Contraseña',
                hint: 'Ingrese su contraseña',
                icon: Icons.lock,
                obscureText: true,
              ),
              SizedBox(height: size.height * 0.02),
              _buildTextField(
                controller: _confirmPasswordController,
                label: 'Confirmar Contraseña',
                hint: 'Repita su contraseña',
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
                  _handleSignUp(context);
                },
                child: Text(
                  'Registrarse',
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
                  Navigator.pop(context);
                },
                child: Text(
                  '¿Ya tienes cuenta? Inicia sesión aquí',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: size.width * 0.04,
                  ),
                ),
              ),
            ],
          ),
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

  void _handleSignUp(BuildContext context) {
    final username = _usernameController.text.trim();
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final confirmPassword = _confirmPasswordController.text.trim();

    if (username.isEmpty || email.isEmpty || password.isEmpty) {
      _showMessage(context, 'Por favor, complete todos los campos.');
      return;
    }

    if (password != confirmPassword) {
      _showMessage(context, 'Las contraseñas no coinciden.');
      return;
    }

    // Aquí puedes agregar lógica para registrar al usuario
    _showMessage(context, 'Registro exitoso.');
    Navigator.pushNamed(context, '/login');
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
