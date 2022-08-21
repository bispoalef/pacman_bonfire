import 'package:bonfire/bonfire.dart';

class FantasmaSprites {
  static Future<SpriteAnimation> get fantasmaDireita => SpriteAnimation.load(
      'enemy_sprite.png',
      SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.3,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));

  static Future<SpriteAnimation> get fantasmaCima => SpriteAnimation.load(
      'enemy_sprite.png',
      SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.3,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(128, 0)));

  static Future<SpriteAnimation> get fantasmaBaixo => SpriteAnimation.load(
      'enemy_sprite.png',
      SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.5,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(192, 0)));
}
