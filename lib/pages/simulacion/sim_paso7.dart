import 'package:flutter/material.dart';

class SimPaso7Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Simulación - Paso 7'),
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
              'Ingrese Tasas Adicionales',
              style: TextStyle(
                fontSize: size.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              'Ingrese información sobre tasas adicionales como seguros o costos de mantenimiento.',
              style: TextStyle(
                fontSize: size.width * 0.04,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: size.height * 0.05),
            TextField(
              decoration: InputDecoration(
                labelText: 'Tasa Adicional (%)',
                hintText: 'Ejemplo: 5%',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: size.height * 0.05),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/simPaso8');
              },
              child: Text('Continuar'),
            ),
          ],
        ),
      ),
    );
  }
}
