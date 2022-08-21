import 'package:bonfire/bonfire.dart';
import 'package:pacman/itens_do_jogo/ponto_especial_sprite.dart';
import 'package:pacman/main.dart';
import 'package:pacman/personagens/pacman.dart';

class PontoEspecial extends SimpleEnemy with ObjectCollision {
  PontoEspecial(Vector2 position)
      : super(
            size: Vector2(tamanhoDoMapa, tamanhoDoMapa),
            position: position,
            animation: SimpleDirectionAnimation(
                idleRight: PontoEspecialSprite.pontoDireita,
                runRight: PontoEspecialSprite.pontoDireita)) {
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
