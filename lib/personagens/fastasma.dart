import 'package:bonfire/bonfire.dart';
import 'package:pacman/personagens/pacman.dart';
import '../main.dart';
import 'fantasma_sprites..dart';

class Fantasma extends SimpleEnemy with ObjectCollision {
  Fantasma(Vector2 position)
      : super(
            size: Vector2(tamanhoDoMapa + 8, tamanhoDoMapa + 8),
            position: position,
            animation: SimpleDirectionAnimation(
              idleRight: FantasmaSprites.fantasmaDireita,
              runRight: FantasmaSprites.fantasmaDireita,
              runUp: FantasmaSprites.fantasmaCima,
              runDown: FantasmaSprites.fantasmaBaixo,
            ),
            speed: 70) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(tamanhoDoMapa + 6, tamanhoDoMapa + 6),
            align: Vector2(tamanhoDoMapa - 16, tamanhoDoMapa - 16),
          ),
        ],
      ),
    );
  }
  @override
  void update(double dt) {
    seeAndMoveToPlayer(
      closePlayer: (player) {
        PackMan(position);
      },
      radiusVision: tamanhoDoMapa * 10,
    );

    super.update(dt);
  }

  @override
  bool onCollision(GameComponent component, bool active) {
    if (component is PackMan) {
      removeFromParent();
    }
    return super.onCollision(component, active);
  }
}

  // @override
  // bool onCollision(GameComponent component, bool active) {
  //   if (component is PackMan) {
  //     removeFromParent();
  //   }
  //   return super.onCollision(component, active);
  // }

