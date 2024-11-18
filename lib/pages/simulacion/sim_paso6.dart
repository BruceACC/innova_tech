import 'package:flutter/material.dart';

class SimPaso6Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Simulación - Paso 6'),
        backgroundColor: Color(0xFFC0C0C0),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.05),
            Text(
              'Ingrese las Garantías del Crédito',
              style: TextStyle(
                fontSize: size.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              'Proporcione detalles de las garantías necesarias para el crédito.',
              style: TextStyle(
                fontSize: size.width * 0.04,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: size.height * 0.05),
            TextField(
              decoration: InputDecoration(
                labelText: 'Garantías',
                hintText: 'Ejemplo: Aval, Hipoteca, etc.',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/simPaso7');
              },
              child: Text('Continuar'),
            ),
          ],
        ),
      ),
    );
  }
}
