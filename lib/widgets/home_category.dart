import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeCategory extends StatelessWidget {
  HomeCategory({super.key, required this.color, this.text, this.onTap});

  Color color;
  String? text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            //shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          alignment: Alignment.center,
          //color: color,
          child: Text(
            text!,
            style: const TextStyle(
              fontFamily: 'BreeSerif',
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

// Color.fromARGB(255, 41, 194, 122)