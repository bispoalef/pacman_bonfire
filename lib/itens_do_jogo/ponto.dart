import 'package:bonfire/bonfire.dart';
import 'package:pacman/itens_do_jogo/ponto_sprite.dart';
import 'package:pacman/main.dart';
import 'package:pacman/personagens/pacman.dart';

class PontoSimples extends GameDecoration with Sensor {
  PontoSimples(Vector2 position)
      : super.withAnimation(
            animation: PontoSimplesSprite.pontoSimples,
            position: position,
            size: Vector2(tamanhoDoMapa, tamanhoDoMapa));

  @override
  void onContact(GameComponent component) {
    if (component is PackMan) {
      component.adicionarPontos(true);
      removeFromParent();
    }
  }

  @override
  void onContactExit(GameComponent component) {
  }
}
