class Foto {
  Foto({
    this.url,
    this.fecha,
  });

  String? url;
  DateTime? fecha;

  factory Foto.fromJson(Map<String, dynamic> json) => Foto(
        url: json["url"],
        fecha: DateTime.parse(json["fecha"]),
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "fecha": fecha!.toIso8601String(),
      };
}
