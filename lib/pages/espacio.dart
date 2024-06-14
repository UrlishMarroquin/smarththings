import 'package:flutter/material.dart';

class Espacio extends StatefulWidget {
  double valorLuz01;
  double valorLuz02;
  Espacio({required this.valorLuz01, required this.valorLuz02});
    
  @override
  State<Espacio> createState() => _Espacio();
}

class _Espacio extends State<Espacio> {
  double luz01 = 0;
  double luz02 = 0;

  double roundedOneDecimal(double number) {
    String stringNumber = number.toStringAsFixed(1);
    return double.parse(stringNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text(
          "ESPACIOS",
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
              child: Text('Ajustar', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Text('Luz', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            Slider(
              value: widget.valorLuz01,
              min: 0,
              max: 100,
              onChanged: (value) {
                widget.valorLuz01 = roundedOneDecimal(value);
                setState(() {});
              },
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("  0  ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text("${widget.valorLuz01}", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text("100", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ]
              )  
            ),                    
            const Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Text('Luz', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),            
            Slider(
              value: widget.valorLuz02,
              min: 0,
              max: 100,
              onChanged: (value) {
                widget.valorLuz02 = roundedOneDecimal(value);
                setState(() {});
              },
            ), 
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("  0  ", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text("${widget.valorLuz02}", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text("100", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ]
              )  
            ),   
                                                         
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