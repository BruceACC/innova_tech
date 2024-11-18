import 'package:flutter/material.dart';

class SimPaso9Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Simulación - Paso 9'),
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
              'Firma Digital',
              style: TextStyle(
                fontSize: size.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              'Por favor, firme digitalmente para completar la simulación.',
              style: TextStyle(
                fontSize: size.width * 0.04,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/simPaso10');
                },
                child: Text('Firmar Digitalmente'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
