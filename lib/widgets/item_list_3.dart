import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/widgets/item_two.dart';
import 'package:flutter/material.dart';

class ItemList3 extends StatelessWidget {
  const ItemList3({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 470,
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ItemsTwo(
                  image: 'assets/images/desktop.png',
                  title: 'Desktop',
                  color: Color.fromARGB(255, 180, 189, 203),
                ),
              ),
              Expanded(
                child: ItemsTwo(
                  image: 'assets/images/laptop.jpg',
                  title: 'Laptop',
                  color: locationBarColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ItemsTwo(
                  image: 'assets/images/harddrive.png',
                  title: 'Desktop',
                  color: Color.fromARGB(255, 180, 189, 203),
                ),
              ),
              ItemsTwo(
                image: 'assets/images/mouse.png',
                title: 'PC Accessories',
                color: locationBarColor,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'See All',
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
    );
  }
}
