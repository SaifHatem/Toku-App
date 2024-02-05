import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';
import 'package:toku/widgets/Phrases_category.dart';

class PhrasesView extends StatelessWidget {
  const PhrasesView({super.key});

  final List<ItemModel> item = const [
    ItemModel(
      jpName: 'rai masu ka',
      enName: 'Are You Coming',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      jpName: 'koudoku suru koto wa wasure ',
      enName: 'Dont Forget To Subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      jpName: 'choushi wa dou desu ka',
      enName: 'How are you feeling',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      jpName: 'watashi wa anime ga daisuk desu',
      enName: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      jpName: 'programming ga daisuk',
      enName: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      jpName: 'programming ga kantan',
      enName: 'Programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      jpName: 'anata no namae wa nani desu ka',
      enName: 'What is your name',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      jpName: 'doko ni iki masu ka',
      enName: 'Where are you going',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      jpName: 'hai 、 rai te iya masu',
      enName: 'Yes im coming',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        backgroundColor: const Color.fromARGB(255, 7, 2, 46),
        title: const Text(
          "Phrsres",
          style: TextStyle(
            fontFamily: 'BreeSerif',
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) {
          return PhrasesCategory(
            color: const Color.fromARGB(255, 13, 117, 197),
            finalItemModel: item[index],
          );
        },
      ),
    );
  }
}
