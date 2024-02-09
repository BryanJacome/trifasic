import 'package:flutter/material.dart';
import 'package:trifasic_89/src/models/mantenimiento_model.dart';
import 'package:trifasic_89/src/services/mantenimientos_service.dart';
import 'package:trifasic_89/src/widgets/mantenimiento_card.dart';

class MantenimientosWidget extends StatefulWidget {
  const MantenimientosWidget({Key? key}) : super(key: key);

  @override
  State<MantenimientosWidget> createState() => _MantenimientosWidgetState();
}

class _MantenimientosWidgetState extends State<MantenimientosWidget> {
  final MantenimientoService _mantenimientoService = MantenimientoService();
  List<Mantenimiento>? _listaMantenimiento;

  @override
  void initState() {
    super.initState();
    _downloadMantenimientos();
  }

  @override
  Widget build(BuildContext context) {
    if (_listaMantenimiento == null) {
      return const Center(
        child: SizedBox(
            height: 50.0, width: 50.0, child: CircularProgressIndicator()),
      );
    }

    if (_listaMantenimiento!.isEmpty) {
      return const Center(
        child: SizedBox(child: Text('No hay datos de mantenimientos')),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 7.0),
      child: ListView(
        children: _listaMantenimiento!
            .map((e) => MantenimientoCard(model: e))
            .toList(),
      ),
    );
  }

  _downloadMantenimientos() async {
    _listaMantenimiento = await _mantenimientoService.getMantenimientos();
    setState(() {});
  }
}
