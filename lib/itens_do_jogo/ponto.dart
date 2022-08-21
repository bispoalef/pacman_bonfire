import 'package:bonfire/bonfire.dart';
import 'package:pacman/itens_do_jogo/ponto_sprite.dart';
import 'package:pacman/main.dart';
import 'package:pacman/personagens/pacman.dart';

class PontoSimples extends SimpleEnemy with ObjectCollision {
  PontoSimples(Vector2 position)
      : super(
            size: Vector2(tamanhoDoMapa, tamanhoDoMapa),
            position: position,
            animation: SimpleDirectionAnimation(
                idleRight: PontoSimplesSprite.pontoDireita,
                runRight: PontoSimplesSprite.pontoDireita)) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(tamanhoDoMapa, tamanhoDoMapa),
          ),
        ],
      ),
    );
  }
  @override
  bool onCollision(GameComponent component, bool active) {
    if (component is PackMan) {
      removeFromParent();
    }
    return super.onCollision(component, active);
  }
}
