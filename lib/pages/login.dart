import 'package:flutter/material.dart';
import 'package:smarththings/pages/inicio.dart';

class Login extends StatefulWidget {
    @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fondo_login.jpg'),
              fit: BoxFit.cover,  // Ajusta la imagen para cubrir todo el fondo
            ),
          ),
          child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,  // Centrar verticalmente
              children: [
                const Text(
                  'Navicury',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // Navegar a la nueva página cuando se haga clic en la imagen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Inicio()),
                    );
                  },
                  child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), // Agrega bordes redondeados si es necesario
                    color: Colors.white, // Fondo transparente
                  ),
                  child: Image.asset(
                    'assets/images/huellas.png',
                    width: 150,
                    height: 150,
                  ),
                ),   
                ),                
                const SizedBox(height: 20),
                const Text(
                  'Presione la pantalla con su dedo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),                
              ]
            )
          ),
        ),
    );
  }
}