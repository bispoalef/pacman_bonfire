import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman/itens_do_jogo/ponto.dart';
import 'package:pacman/itens_do_jogo/ponto_especial.dart';
import 'package:pacman/personagens/fastasma.dart';
import 'package:pacman/personagens/pacman.dart';

double tamanhoDoMapa = 16;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
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
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(
        directional: JoystickDirectional(
          color: Colors.yellowAccent,
          isFixed: false,
        ),
      ),
      map: TiledWorldMap(
        'map/pacman_map.json',
        objectsBuilder: {
          'fantasma': (properties) => Fantasma(properties.position),
          'ponto_especial': (properties) => PontoEspecial(properties.position),
          'ponto': (properties) => PontoSimples(properties.position),
        },
      ),
      player: PackMan(
        Vector2(19 * tamanhoDoMapa, 25.7 * tamanhoDoMapa),
      ),
      cameraConfig: CameraConfig(
        zoom: 1,
      ),
    );
  }
}
