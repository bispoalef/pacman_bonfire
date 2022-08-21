import 'package:bonfire/bonfire.dart';
import 'package:pacman/itens_do_jogo/ponto_especial_sprite.dart';
import 'package:pacman/main.dart';
import 'package:pacman/personagens/pacman.dart';

class PontoEspecial extends GameDecoration with Sensor {
  PontoEspecial(Vector2 position)
      : super.withAnimation(
          animation: PontoEspecialSprite.pontoEspecial,
          position: position,
          size: Vector2(tamanhoDoMapa, tamanhoDoMapa),
        );
  @override
  void onContact(GameComponent component) {
    if (component is PackMan) {
      component.adicionarPontos(false);
      removeFromParent();
    }
  }

  @override
  void onContactExit(GameComponent component) {}
}
