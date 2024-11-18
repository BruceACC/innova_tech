import 'package:flutter/material.dart';

class SimPaso2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Simulación - Paso 2'),
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
              'Seleccione la Entidad Financiera',
              style: TextStyle(
                fontSize: size.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              'Elija la entidad financiera con la que desea trabajar para esta simulación.',
              style: TextStyle(
                fontSize: size.width * 0.04,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.05),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: size.width * 0.05,
                mainAxisSpacing: size.height * 0.02,
                padding: EdgeInsets.all(size.width * 0.05),
                children: [
                  _buildOptionButton(context, 'BCP'),
                  _buildOptionButton(context, 'Interbank'),
                  _buildOptionButton(context, 'Pichincha'),
                  _buildOptionButton(context, 'Banbif'),
                  _buildOptionButton(context, 'BBVA'),
                  _buildOptionButton(context, 'Scotiabank'),
                  _buildOptionButton(context, 'CMAC Huancayo'),
                  _buildOptionButton(context, 'Financiera Crediscotia'),
                ],
              ),
            ),
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
                Navigator.pushNamed(context, '/simPaso3');
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

  Widget _buildOptionButton(BuildContext context, String label) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green[600],
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Seleccionaste $label'),
          ),
        );
      },
      child: Text(
        label,
        style: TextStyle(
          color: Color(0xFF171717),
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
