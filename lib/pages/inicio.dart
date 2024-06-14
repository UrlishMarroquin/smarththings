import 'package:flutter/material.dart';
import 'package:smarththings/models/espacio_model.dart';
import 'package:smarththings/models/equipo_model.dart';
import 'package:smarththings/widgets/espacios_widget.dart';
import 'package:smarththings/widgets/equipos_widget.dart';

class Inicio extends StatefulWidget {
    @override
  State<Inicio> createState() => _Inicio();
}

class _Inicio extends State<Inicio> {

  List<EspacioModel> espacioList = [
    EspacioModel(
      espacio: "A",
      focon01: 10,
      focon02: 20,
    ),
    EspacioModel(
      espacio: "B",
      focon01: 30,
      focon02: 40,
    ),
    EspacioModel(
      espacio: "C",
      focon01: 50,
      focon02: 60,
    ),       
    EspacioModel(
      espacio: "D",
      focon01: 70,
      focon02: 80,
    ),     
  ];  

  List<EquipoModel> equipoList = [
    EquipoModel(
      icono: Icons.tv_rounded,
      equipo: "Tv Cuarto",
      fabricante: "Sansung",
      modelo: "TV-005",
      mac: "00:1A:2B:3C:4D:5E",
      estado: true,
    ),
    EquipoModel(
      icono: Icons.electric_meter_sharp,
      equipo: "Refrigeradora",
      fabricante: "LG",
      modelo: "RF-007",
      mac: "11:22:33:44:55:66",
      estado: false,
    ),
    EquipoModel(
      icono: Icons.door_front_door_sharp,
      equipo: "Puerta Sala",
      fabricante: "Plaza Vea",
      modelo: "PS-003",
      mac: "00:12:34:56:78:9A",
      estado: true,
    ),       
    EquipoModel(
      icono: Icons.car_rental_sharp,
      equipo: "Cochera",
      fabricante: "Toyota",
      modelo: "CH-009",
      mac: "00:98:76:54:32:10",
      estado: false,
    ),     
  ];    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text(
          "APP DE SMARTHTHINGS",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Cabecera(),
            const SizedBox(height: 16.0), 
            const Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Text('Espacios', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            EspacioList(espacioList: espacioList),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Text('Equipos conectados', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),            
            EquipoList(equipoList: equipoList),
          ],
        ),
      ),      
    );
  }

}

class Cabecera extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      alignment: Alignment.center,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 0),
          Text(
          "Navicury",
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]
      )
    );
  }
}

class EspacioList extends StatelessWidget {

  final List<EspacioModel> espacioList;

  EspacioList({required this.espacioList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...espacioList.map(
                  (e) => EspaciosWidget(
                    espacio: e.espacio,
                    focon01: e.focon01,
                    focon02: e.focon02,
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}

class EquipoList extends StatelessWidget {

  final List<EquipoModel> equipoList;

  EquipoList({required this.equipoList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
              child: Container(
              padding: const EdgeInsets.fromLTRB(12, 20, 12, 0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  ...equipoList.map(
                    (e) => EquipoWidget(
                      icono: e.icono,
                      equipo: e.equipo,
                      fabricante: e.fabricante,
                      modelo: e.modelo,
                      mac: e.mac,
                      estado: e.estado,
                    ),
                  ),
                ],
              ),
              ),
            );
  }
} 