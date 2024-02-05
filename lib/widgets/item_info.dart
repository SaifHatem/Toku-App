import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.itemModel});

  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                itemModel.jpName,
                style: const TextStyle(
                  fontFamily: "BreeSerif",
                  fontSize: 18,
                ),
              ),
              Text(
                itemModel.enName,
                style: const TextStyle(
                  fontFamily: "BreeSerif",
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
            onPressed: () {
              itemModel.playsound();
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 24,
            ),
          ),
        )
      ],
    );
  }
}
