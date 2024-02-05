import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';
import 'package:toku/widgets/final_item_category.dart';

class FamilyMembersView extends StatelessWidget {
  const FamilyMembersView({super.key});

  final List<ItemModel> item = const [
    ItemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojiisan',
      enName: 'Grandfather',
      sound: 'sounds/family_members/grand father.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'Grandmother',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'chichioya',
      enName: 'Father',
      sound: 'sounds/family_members/father.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'Mother',
      sound: 'sounds/family_members/mother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
      sound: 'sounds/family_members/son.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
      sound: 'sounds/family_members/daughter.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nisan',
      enName: 'Older Brother',
      sound: 'sounds/family_members/older bother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older Sister',
      sound: 'sounds/family_members/older sister.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otouto',
      enName: 'Younger Brother',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imoto',
      enName: 'Younger Sister',
      sound: 'sounds/family_members/younger sister.wav',
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
          "Family Members",
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
            color: const Color.fromARGB(255, 230, 112, 9),
            finalItemModel: item[index],
          );
        },
      ),
    );
  }
}
