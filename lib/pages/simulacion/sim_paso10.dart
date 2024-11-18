import 'package:flutter/material.dart';

class SimPaso10Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Simulación Completada'),
        backgroundColor: Color(0xFFC0C0C0),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check_circle, size: size.width * 0.3, color: Colors.green),
              SizedBox(height: size.height * 0.05),
              Text(
                '¡Simulación Completada!',
                style: TextStyle(
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[700],
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Text(
                'Gracias por usar nuestra plataforma.',
                style: TextStyle(
                  fontSize: size.width * 0.04,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: size.height * 0.05),
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/inicio'));
                },
                child: Text('Volver al Inicio'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
