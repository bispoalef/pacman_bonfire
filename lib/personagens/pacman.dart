import 'package:bonfire/bonfire.dart';
import 'package:pacman/main.dart';
import 'package:pacman/personagens/pacman_sprites.dart';

import '../interface/score_controller.dart';

class PackMan extends SimplePlayer with ObjectCollision {
  late Controlador scoreController;
  PackMan(Vector2 position)
      : super(
          size: Vector2(tamanhoDoMapa + 10, tamanhoDoMapa + 10),
          position: position,
          animation: SimpleDirectionAnimation(
            runRight: PacmanSprites.packmanDireita,
            idleRight: PacmanSprites.packmanDireita,
            idleUp: PacmanSprites.packmanCima,
            runUp: PacmanSprites.packmanCima,
            idleDown: PacmanSprites.packmanBaixo,
            runDown: PacmanSprites.packmanBaixo,
          ),
          speed: 80,
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(tamanhoDoMapa + 5, tamanhoDoMapa + 5),
            align: Vector2(tamanhoDoMapa - 15, tamanhoDoMapa - 15),
          ),
        ],
      ),
    );
  }
  @override
  void onMount() {
    scoreController = BonfireInjector.instance.get();
    super.onMount();
  }

  void adicionarPontos(bool tipo) {
    if (tipo == true) {
      scoreController.adinionar();
    } else {
      scoreController.adinionarEspecial();
    }
  }
}
