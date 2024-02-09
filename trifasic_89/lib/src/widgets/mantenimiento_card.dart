import 'package:flutter/material.dart';
import 'package:trifasic_89/src/models/mantenimiento_model.dart';

class MantenimientoCard extends StatelessWidget {
  const MantenimientoCard({Key? key, required this.model}) : super(key: key);
  final Mantenimiento model;

  @override
  Widget build(BuildContext context) {
    final prioridad = Container(
        height: 32.0,
        width: 32.0,
        color: model.prioridad == 1
            ? Colors.red
            : model.prioridad == 2
                ? Colors.yellow
                : Colors.green,
        child: Icon(Icons.priority_high,
            color: model.prioridad == 2 ? Colors.black : Colors.white));

    return Card(
      elevation: 7.0,
      child: ListTile(
        leading: const Icon(Icons.build),
        title: Text(model.titulo ?? ""),
        subtitle: Text(model.descripcion ?? ""),
        trailing:
            model.prioridad == null || model.prioridad == 0 ? null : prioridad,
      ),
    );
  }
}
