import 'package:flutter/material.dart';

class ItemsTwo extends StatelessWidget {
  const ItemsTwo(
      {super.key,
      required this.image,
      required this.title,
      required this.color});

  final String image;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          width: 150,
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          textAlign: TextAlign.start,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
