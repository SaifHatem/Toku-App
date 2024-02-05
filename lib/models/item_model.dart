import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String jpName;
  final String enName;
  final String? image;
  final String sound;

  const ItemModel({
    this.image,
    required this.jpName,
    required this.enName,
    required this.sound,
  });

  void playsound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
