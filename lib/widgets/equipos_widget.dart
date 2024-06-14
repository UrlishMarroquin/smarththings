import 'package:flutter/material.dart';
import 'package:smarththings/pages/equipo.dart';

class EquipoWidget extends StatelessWidget {
  IconData icono;
  String equipo;
  String fabricante;
  String modelo;
  String mac;
  bool estado;

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
    return GestureDetector(
      onTap: () {
        // Navegar a la Segunda Página
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Equipo(
              valEqu: equipo,
              valFab: fabricante,
              valMod: modelo,
              valMac: mac,
              valEst: estado,
            )
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: 180,  // Ancho del Card
          height: 180,
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icono, color: Colors.black, size: 75,),
              const SizedBox(height: 8),
              Text(equipo, style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),                    
            ],
          ),
        ),
      ),     
    );
  }
}
