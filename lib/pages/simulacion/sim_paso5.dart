import 'package:flutter/material.dart';

class SimPaso5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Simulación - Paso 5'),
        backgroundColor: Color(0xFFC0C0C0),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.05),
            Text(
              'Seleccione el Periodo de Pago',
              style: TextStyle(
                fontSize: size.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              'Indique cada cuánto tiempo desea realizar los pagos de su deuda crediticia.',
              style: TextStyle(
                fontSize: size.width * 0.04,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.05),
            _buildPeriodOptions(context),
            SizedBox(height: size.height * 0.1),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF808479),
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.2,
                  vertical: size.height * 0.02,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                // Navegar al paso 6
                Navigator.pushNamed(context, '/simPaso6');
              },
              child: Text(
                'Continuar',
                style: TextStyle(
                  fontSize: size.width * 0.05,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
          ],
        ),
      ),
    );
  }

  Widget _buildPeriodOptions(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final List<String> periods = [
      'Diaria',
      'Quincenal',
      'Mensual',
      'Bimestral',
      'Trimestral',
      'Cuatrimestral',
      'Semestral',
      'Anual',
    ];

    return Wrap(
      spacing: size.width * 0.05,
      runSpacing: size.height * 0.02,
      alignment: WrapAlignment.center,
      children: periods
          .map(
            (period) => ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[600],
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.1,
              vertical: size.height * 0.02,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Seleccionaste $period'),
              ),
            );
          },
          child: Text(
            period,
            style: TextStyle(
              color: Color(0xFF171717),
              fontSize: size.width * 0.04,
            ),
          ),
        ),
      )
          .toList(),
    );
  }
}
