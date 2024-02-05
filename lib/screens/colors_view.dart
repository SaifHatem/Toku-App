import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';
import 'package:toku/widgets/final_item_category.dart';

class ColorsView extends StatelessWidget {
  const ColorsView({super.key});

  final List<ItemModel> item = const [
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burakku',
      enName: 'Black',
      sound: 'sounds/colors/black.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
      sound: 'sounds/colors/brown.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori ppoi Kiiro',
      enName: 'Dusty Yellow',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gre',
      enName: 'Gray',
      sound: 'sounds/colors/gray.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'Green',
      sound: 'sounds/colors/green.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
      sound: 'sounds/colors/red.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiroi',
      enName: 'White',
      sound: 'sounds/colors/white.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'Yellow',
      sound: 'sounds/colors/yellow.wav',
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
          "Colors",
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
            color: const Color.fromARGB(255, 194, 10, 204),
            finalItemModel: item[index],
          );
        },
      ),
    );
  }
}
