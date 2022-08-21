import 'package:bonfire/bonfire.dart';

class PontoEspecialSprite {
  static Future<SpriteAnimation> get pontoEspecial => SpriteAnimation.load(
      'ponto.png',
      SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.3,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(45, 0)));
}
