import 'package:flutter/material.dart';

class SimHistorialPage extends StatelessWidget {
  final List<Map<String, dynamic>> historial = [
    {
      'id': '1545',
      'nombre': 'Torre Estaff',
      'detalles': [
        {'label': 'Tipo Tasa', 'value': 'TEP'},
        {'label': 'Interés Tasa', 'value': '16%'},
        {'label': 'Periodo Tasa', 'value': 'Cuatrimestral'},
        {'label': 'Monto', 'value': 'S/. 10,000.00'},
      ],
    },
    {
      'id': '1932',
      'nombre': 'Torre Filomena',
      'detalles': [
        {'label': 'Tipo Tasa', 'value': 'TNA'},
        {'label': 'Interés Tasa', 'value': '12%'},
        {'label': 'Periodo Tasa', 'value': 'Mensual'},
        {'label': 'Monto', 'value': 'S/. 20,000.00'},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de Simulaciones'),
        backgroundColor: Color(0xFFC0C0C0),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: ListView.builder(
          itemCount: historial.length,
          itemBuilder: (context, index) {
            final item = historial[index];
            return Card(
              margin: EdgeInsets.only(bottom: size.height * 0.02),
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              child: ListTile(
                title: Text(
                  '${item['nombre']} (ID: ${item['id']})',
                  style: TextStyle(
                    fontSize: size.width * 0.045,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: item['detalles'].map<Widget>((detail) {
                    return Text(
                      '${detail['label']}: ${detail['value']}',
                      style: TextStyle(color: Colors.grey[700]),
                    );
                  }).toList(),
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Detalle: ${item['nombre']}')),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
