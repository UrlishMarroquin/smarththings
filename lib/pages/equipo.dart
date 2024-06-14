import 'package:flutter/material.dart';

class Equipo extends StatefulWidget {
  String valEqu;
  String valFab;
  String valMod;
  String valMac;
  bool valEst;
  Equipo(
    {
      required this.valEqu, 
      required this.valFab,
      required this.valMod,
      required this.valMac,
      required this.valEst,
    }
  );

  @override
  State<Equipo> createState() => _Equipo();
}

class _Equipo extends State<Equipo> {

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text(
          "EQUIPOS",
        ),
      ),
      body: Column(
        children: [
          Cabecera(),
          const SizedBox(height: 16.0), 
          Padding(
            padding: EdgeInsets.fromLTRB(50, 8, 50, 8),
            child:Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Equipo:", style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal)),
                    Text("${widget.valEqu}", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  ]
                ),
                const SizedBox(height: 8.0), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Fabricante:", style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal)),
                    Text("${widget.valFab}", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  ]
                ),
                const SizedBox(height: 8.0), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Modelo:", style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal)),
                    Text("${widget.valMod}", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  ]
                ),
                const SizedBox(height: 8.0), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("MAC:", style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal)),
                    Text("${widget.valMac}", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  ]
                ),
                const SizedBox(height: 24.0), 
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.valEst = !widget.valEst;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: Colors.blue, width: 2),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 58),
                    ),                    
                    child: Text(widget.valEst ? 'Apagar' : 'Encender', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            )           
          ),                             
        ],
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
        mainAxisAlignment: MainAxisAlignment.center,  // Centrar verticalmente
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