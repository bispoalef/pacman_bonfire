import 'package:bonfire/bonfire.dart';
import 'package:pacman/personagens/spites_do_jogo.dart';

class PackMan extends SimplePlayer {
  PackMan(Vector2 position)
      : super(
            size: Vector2(24, 24),
            position: position,
            animation: SimpleDirectionAnimation(
              runRight: SpritesDoJogo.packmanDireita,
              idleRight: SpritesDoJogo.packmanDireita,
              idleUp: SpritesDoJogo.packmanCima,
              runUp: SpritesDoJogo.packmanCima,
              idleDown: SpritesDoJogo.packmanBaixo,
              runDown: SpritesDoJogo.packmanBaixo,
            ));
}
