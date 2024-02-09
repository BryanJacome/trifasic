// To parse this JSON data, do
//
//     final mantenimiento = mantenimientoFromJson(jsonString);

import 'dart:convert';

import 'package:trifasic_89/src/models/foto_model.dart';

Mantenimiento mantenimientoFromJson(String str) =>
    Mantenimiento.fromJson(json.decode(str));

String mantenimientoToJson(Mantenimiento data) => json.encode(data.toJson());

class Mantenimiento {
  Mantenimiento({
    this.titulo,
    this.descripcion,
    this.fechaCreacion,
    this.fechaAsignacion,
    this.fechaRealizacion,
    this.estado,
    this.prioridad,
    this.observacion,
    this.fotoInicio,
    this.fotoFinal,
  });

  String? titulo;
  String? descripcion;
  DateTime? fechaCreacion;
  DateTime? fechaAsignacion;
  DateTime? fechaRealizacion;
  int? estado;
  int? prioridad;
  String? observacion;
  Foto? fotoInicio;
  Foto? fotoFinal;

  factory Mantenimiento.fromJson(Map<String, dynamic> json) => Mantenimiento(
        titulo: json["titulo"],
        descripcion: json["descripcion"],
        fechaCreacion: json["fechaCreacion"] != null
            ? DateTime.parse(json["fechaCreacion"])
            : null,
        fechaAsignacion: json["fechaAsignacion"] != null
            ? DateTime.parse(json["fechaAsignacion"])
            : null,
        fechaRealizacion: json["fechaRealizacion"] != null
            ? DateTime.parse(json["fechaRealizacion"])
            : null,
        estado: json["estado"],
        prioridad: json["prioridad"],
        observacion: json["observacion"],
        fotoInicio: json["fotoInicio"] != null
            ? Foto.fromJson(json["fotoInicio"])
            : null,
        fotoFinal:
            json["fotoFinal"] != null ? Foto.fromJson(json["fotoFinal"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "descripcion": descripcion,
        "fechaCreacion": fechaCreacion!.toIso8601String(),
        "fechaAsignacion": fechaAsignacion!.toIso8601String(),
        "fechaRealizacion": fechaRealizacion!.toIso8601String(),
        "estado": estado,
        "prioridad": prioridad,
        "observacion": observacion,
        "fotoInicio": fotoInicio!.toJson(),
        "fotoFinal": fotoFinal!.toJson(),
      };
}
