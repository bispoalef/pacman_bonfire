import 'package:bonfire/bonfire.dart';

class PontoSimplesSprite {
  static Future<SpriteAnimation> get pontoDireita => SpriteAnimation.load(
      'ponto.png',
      SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.3,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));
}
