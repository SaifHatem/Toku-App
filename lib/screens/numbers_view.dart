import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';
import 'package:toku/widgets/final_item_category.dart';

class NumbersView extends StatelessWidget {
  const NumbersView({super.key});

  final List<ItemModel> item = const [
    ItemModel(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      enName: 'One',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'Two',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'Three',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: 'Four',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'Five',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'Six',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: 'Seven',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'Hachi',
      enName: 'Eight',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyu',
      enName: 'Nine',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Ju',
      enName: 'Ten',
      sound: 'sounds/numbers/number_ten_sound.mp3',
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
          "Numbers",
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
          return FinalItemCategory(
            color: const Color.fromARGB(255, 12, 178, 112),
            finalItemModel: item[index],
          );
        },
      ),
    );
  }
}
