import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman/personagens/pacman.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  double tamanhoDoMapa = 16;

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(
        directional:
            JoystickDirectional(color: Colors.yellowAccent, isFixed: false),
      ),
      map: TiledWorldMap('map/pacman_map.json'),
      player: PackMan(Vector2(6 * tamanhoDoMapa, 10 * tamanhoDoMapa)),
    );
  }
}
