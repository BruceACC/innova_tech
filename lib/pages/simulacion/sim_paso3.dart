import 'package:flutter/material.dart';

class SimPaso3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Simulación - Paso 3'),
        backgroundColor: Color(0xFF171717),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.05),
            Text(
              'Ingrese el Monto de la Vivienda',
              style: TextStyle(
                fontSize: size.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              'Indique el monto estimado de la vivienda que desea adquirir.',
              style: TextStyle(
                fontSize: size.width * 0.04,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.1),
            _buildMontoInput(context),
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
                // Navegar a la siguiente pantalla
                Navigator.pushNamed(context, '/simPaso4');
              },
              child: Text(
                'Continuar',
                style: TextStyle(
                  fontSize: size.width * 0.05,
                  color: Color(0xFF171717),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
          ],
        ),
      ),
    );
  }

  Widget _buildMontoInput(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Monto estimado:',
            style: TextStyle(
              fontSize: size.width * 0.045,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: size.height * 0.02),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Ingrese el monto en soles',
              prefixIcon: Icon(Icons.monetization_on),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: size.width * 0.04,
                vertical: size.height * 0.02,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
