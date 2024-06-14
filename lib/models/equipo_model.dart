import 'package:flutter/material.dart';

class EquipoModel {
  IconData icono;
  String equipo;
  String fabricante;
  String modelo;
  String mac;
  bool estado;

  EquipoModel({
    required this.icono,
    required this.equipo,
    required this.fabricante,
    required this.modelo,
    required this.mac,
    required this.estado,            
  });
}
