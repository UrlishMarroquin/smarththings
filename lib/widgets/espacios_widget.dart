import 'package:flutter/material.dart';
import 'package:smarththings/pages/espacio.dart';

class EspaciosWidget extends StatelessWidget {
  String espacio;
  double focon01;
  double focon02;

  EspaciosWidget({
    required this.espacio,
    required this.focon01,
    required this.focon02,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navegar a la Segunda Página
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Espacio(valorLuz01: focon01, valorLuz02: focon02)),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          padding: const EdgeInsets.fromLTRB(45, 20, 45, 20),
          child: Column(
            children: [
              Text(espacio, style: const TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold)),                    
            ],
          ),
        ),
      ),
    );
  }
}
