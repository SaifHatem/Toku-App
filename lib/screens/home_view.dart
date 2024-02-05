import 'package:flutter/material.dart';
import 'package:toku/screens/colors_view.dart';
import 'package:toku/screens/family_members_view.dart';
import 'package:toku/screens/numbers_view.dart';
import 'package:toku/screens/phrases_view.dart';
import 'package:toku/widgets/home_category.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        backgroundColor: const Color.fromARGB(255, 7, 2, 46),
        title: const Center(
          child: Text(
            "Toku App",
            style: TextStyle(
              fontFamily: 'BreeSerif',
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView(
          children: [
            HomeCategory(
              color: const Color.fromARGB(255, 12, 178, 112),
              text: 'Numbers',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const NumbersView();
                  }),
                );
              },
            ),
            HomeCategory(
              color: const Color.fromARGB(255, 230, 112, 9),
              text: 'Family Members',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const FamilyMembersView();
                  }),
                );
              },
            ),
            HomeCategory(
              color: const Color.fromARGB(255, 194, 10, 204),
              text: 'Colors',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const ColorsView();
                  }),
                );
              },
            ),
            HomeCategory(
              color: const Color.fromARGB(255, 13, 117, 197),
              text: 'Phrases',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const PhrasesView();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
