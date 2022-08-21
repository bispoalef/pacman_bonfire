import 'package:bonfire/bonfire.dart';
import 'package:pacman/main.dart';
import 'package:pacman/personagens/pacman_sprites.dart';

class PackMan extends SimplePlayer with ObjectCollision {
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
            size: Vector2(tamanhoDoMapa + 10, tamanhoDoMapa + 10),
          ),
        ],
      ),
    );
  }
}
