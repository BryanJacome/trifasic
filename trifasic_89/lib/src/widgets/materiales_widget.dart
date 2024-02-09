import 'package:flutter/material.dart';

class MaterialesWidget extends StatelessWidget {
  const MaterialesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.cable, size: 50.0),
        Text("Materiales", style: Theme.of(context).textTheme.headline4)
      ],
    ));
  }
}
