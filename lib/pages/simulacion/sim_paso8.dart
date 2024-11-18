import 'package:flutter/material.dart';

class SimPaso8Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Simulación - Paso 8'),
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
              'Confirme los Datos Ingresados',
              style: TextStyle(
                fontSize: size.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              'Revise y confirme los datos ingresados antes de proceder.',
              style: TextStyle(
                fontSize: size.width * 0.04,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: size.height * 0.05),
            // Aquí podrías agregar una lista con los datos ingresados
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Garantías:'),
                    subtitle: Text('Ejemplo: Aval, Hipoteca'),
                  ),
                  ListTile(
                    title: Text('Tasa Adicional:'),
                    subtitle: Text('5%'),
                  ),
                  // Agrega más detalles según sea necesario
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/simPaso9');
              },
              child: Text('Confirmar y Continuar'),
            ),
          ],
        ),
      ),
    );
  }
}
