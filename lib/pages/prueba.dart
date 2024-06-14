import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // Ejemplo de datos en una lista de mapas
  final List<Map<String, dynamic>> equipoList = [
    {
      'icono': Icons.computer,
      'equipo': 'Computadora 1',
      'fabricante': 'Fabricante A',
      'modelo': 'Modelo A',
      'mac': '00:0A:E6:3E:FD:E1',
      'estado': 'Activo'
    },
    {
      'icono': Icons.router,
      'equipo': 'Router 1',
      'fabricante': 'Fabricante B',
      'modelo': 'Modelo B',
      'mac': '00:0A:E6:3E:FD:E2',
      'estado': 'Inactivo'
    },
    {
      'icono': Icons.computer,
      'equipo': 'Computadora 1',
      'fabricante': 'Fabricante A',
      'modelo': 'Modelo A',
      'mac': '00:0A:E6:3E:FD:E1',
      'estado': 'Activo'
    },
    {
      'icono': Icons.router,
      'equipo': 'Router 1',
      'fabricante': 'Fabricante B',
      'modelo': 'Modelo B',
      'mac': '00:0A:E6:3E:FD:E2',
      'estado': 'Inactivo'
    },    
    // Agrega más elementos según sea necesario
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Equipos en dos columnas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            ...equipoList.map(
              (e) => EquipoWidget(
                icono: e['icono'],
                equipo: e['equipo'],
                fabricante: e['fabricante'],
                modelo: e['modelo'],
                mac: e['mac'],
                estado: e['estado'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EquipoWidget extends StatelessWidget {
  final IconData icono;
  final String equipo;
  final String fabricante;
  final String modelo;
  final String mac;
  final String estado;

  EquipoWidget({
    required this.icono,
    required this.equipo,
    required this.fabricante,
    required this.modelo,
    required this.mac,
    required this.estado,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icono, size: 40),
            SizedBox(height: 8.0),
            Text(equipo, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 4.0),
            Text(fabricante),
            SizedBox(height: 4.0),
            Text(modelo),
            SizedBox(height: 4.0),
            Text(mac),
            SizedBox(height: 4.0),
            Text(estado, style: TextStyle(color: estado == 'Activo' ? Colors.green : Colors.red)),
          ],
        ),
      ),
    );
  }
}