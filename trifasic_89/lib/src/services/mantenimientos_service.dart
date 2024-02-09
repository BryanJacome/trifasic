import 'package:http/http.dart' as http;
import 'package:trifasic_89/src/models/mantenimiento_model.dart';
import 'dart:convert';

class MantenimientoService {
  MantenimientoService();
  final String _rootUrl =
      "https://trifasic-backend-9bc1e.web.app/api/mantenimiento";

  Future<List<Mantenimiento>> getMantenimientos() async {
    List<Mantenimiento> result = [];
    try {
      var url = Uri.parse(_rootUrl);
      final response = await http.get(url);
      if (response.body.isEmpty) return result;
      List<dynamic> listBody = json.decode(response.body);
      for (var item in listBody) {
        final mantenimiento = Mantenimiento.fromJson(item);
        result.add(mantenimiento);
      }
      return result;
    } catch (ex) {
      return result;
    }
  }
}
