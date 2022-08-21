import 'package:bonfire/bonfire.dart';

class PacmanSprites {
  static Future<SpriteAnimation> get packmanDireita => SpriteAnimation.load(
      'sprites.png',
      SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.3,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));

  static Future<SpriteAnimation> get packmanCima => SpriteAnimation.load(
      'sprites.png',
      SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.3,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 64)));

  static Future<SpriteAnimation> get packmanBaixo => SpriteAnimation.load(
      'sprites.png',
      SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.5,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 96)));
}
