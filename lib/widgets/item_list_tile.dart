import 'package:flutter/material.dart';

class ItemListTile extends StatelessWidget {
  const ItemListTile({super.key, required this.image, required this.itemName});

  final String image;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          image,
          height: 120,
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Text(
            itemName,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 18),
            // overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
