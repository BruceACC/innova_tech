import 'package:flutter/material.dart';

class SimResultadoPage extends StatelessWidget {
  final Map<String, dynamic> resultado = {
    'entidad': 'BCP',
    'montoVivienda': 'S/. 150,000.00',
    'cuotaInicial': 'S/. 30,000.00',
    'montoFinanciar': 'S/. 120,000.00',
    'periodoPago': 'Mensual',
    'tasaInteres': '8%',
    'duracion': '20 años',
    'cuotaMensual': 'S/. 1,200.00',
  };

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Resultados de la Simulación'),
        backgroundColor: Color(0xFFC0C0C0),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.05),
            Text(
              'Resumen de la Simulación',
              style: TextStyle(
                fontSize: size.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.03),
            _buildResultadoCard(context),
            SizedBox(height: size.height * 0.05),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.2,
                  vertical: size.height * 0.02,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/home'));
              },
              child: Text(
                'Volver al Inicio',
                style: TextStyle(
                  fontSize: size.width * 0.05,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResultadoCard(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: resultado.entries.map((entry) {
            return Padding(
              padding: EdgeInsets.only(bottom: size.height * 0.02),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${entry.key}: ',
                    style: TextStyle(
                      fontSize: size.width * 0.045,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      entry.value,
                      style: TextStyle(
                        fontSize: size.width * 0.045,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
