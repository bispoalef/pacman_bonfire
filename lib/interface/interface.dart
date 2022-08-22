import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

import 'controller.dart';

class PlacarWidget extends StatefulWidget {
  const PlacarWidget({Key? key}) : super(key: key);

  @override
  State<PlacarWidget> createState() => _PlacarWidgetState();
}

class _PlacarWidgetState extends State<PlacarWidget> {
  late Controlador scoreController;

  @override
  void initState() {
    scoreController = BonfireInjector.instance.get();
    scoreController.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    scoreController.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      child: Material(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('SCORE: ${scoreController.placar}'),
        ),
      ),
    );
  }

  void _listener() {
    setState(() {});
  }
}
