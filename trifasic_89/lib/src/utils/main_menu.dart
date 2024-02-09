import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:trifasic_89/src/models/mantenimiento_model.dart';
import 'package:trifasic_89/src/widgets/inicio_widget.dart';
import 'package:trifasic_89/src/widgets/mantenimientos_widget.dart';
import 'package:trifasic_89/src/widgets/materiales_widget.dart';

class MenuItem {
  String label;
  IconData icon;
  MenuItem(this.label, this.icon);
}

List<MenuItem> menuOptions = [
  MenuItem("Inicio", Icons.home),
  MenuItem("Mantenimientos", Icons.build),
  MenuItem("Materiales", Icons.cable),
  //MenuItem("Bodega", Icons.store),
  //MenuItem("Perfil", Icons.person),
];

List<Widget> contentWidgets = [
  const InicioWidget(),
  const MantenimientosWidget(),
  const MaterialesWidget()
];

List<Mantenimiento> ejemploMantenimientos = [
  Mantenimiento(
      titulo: "Mantenimiento preventivo transformador",
      descripcion:
          "Realización mantenimiento preventivo de transformador 13 KVA",
      estado: 0,
      prioridad: 1),
  Mantenimiento(
      titulo: "Instalar medidor",
      descripcion: "Instalación de medidor 120 - 220 voltios",
      estado: 0,
      prioridad: 3),
  Mantenimiento(
      titulo: "Reafirmación de tensores",
      descripcion:
          "Reafirmación de tensores en los postes de la red industrial sur",
      estado: 0,
      prioridad: 2),
  Mantenimiento(
      titulo: "Mantenimiento preventivo transformador",
      descripcion:
          "Realización mantenimiento preventivo de transformador 13 KVA",
      estado: 0,
      prioridad: 1),
  Mantenimiento(
      titulo: "Instalar medidor",
      descripcion: "Instalación de medidor 120 - 220 voltios",
      estado: 0,
      prioridad: 3),
  Mantenimiento(
      titulo: "Reafirmación de tensores",
      descripcion:
          "Reafirmación de tensores en los postes de la red industrial sur",
      estado: 0,
      prioridad: 2),
  Mantenimiento(
      titulo: "Mantenimiento preventivo transformador",
      descripcion:
          "Realización mantenimiento preventivo de transformador 13 KVA",
      estado: 0,
      prioridad: 1),
  Mantenimiento(
      titulo: "Instalar medidor",
      descripcion: "Instalación de medidor 120 - 220 voltios",
      estado: 0,
      prioridad: 3),
  Mantenimiento(
      titulo: "Reafirmación de tensores",
      descripcion:
          "Reafirmación de tensores en los postes de la red industrial sur",
      estado: 0,
      prioridad: 2),
  Mantenimiento(
      titulo: "Mantenimiento preventivo transformador",
      descripcion:
          "Realización mantenimiento preventivo de transformador 13 KVA",
      estado: 0),
  Mantenimiento(
      titulo: "Instalar medidor",
      descripcion: "Instalación de medidor 120 - 220 voltios",
      estado: 0,
      prioridad: 0),
  Mantenimiento(
      titulo: "Reafirmación de tensores",
      descripcion:
          "Reafirmación de tensores en los postes de la red industrial sur",
      estado: 0,
      prioridad: 2)
];
