import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Image.asset(
            image,
            fit: BoxFit.cover,
            height: 200,
          ),
        ],
      ),
    );
  }
}
