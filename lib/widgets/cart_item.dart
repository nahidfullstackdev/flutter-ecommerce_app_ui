import 'package:ecommerce_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem(
      {super.key,
      required this.image,
      required this.itemName,
      required this.ratingsNum,
      required this.price});

  final String image;
  final String itemName;
  final String ratingsNum;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///image
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: circleColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),

          ///item name
          Text(
            textAlign: TextAlign.left,
            itemName,
            style: const TextStyle(color: Colors.black),
          ),

          ///rating
          Row(
            children: [
              //star icon
              const Row(
                children: [
                  //icons
                  Icon(
                    Icons.star,
                    color: buttonColor,
                  ),
                  Icon(
                    Icons.star,
                    color: buttonColor,
                  ),
                  Icon(
                    Icons.star,
                    color: buttonColor,
                  ),
                  Icon(
                    Icons.star,
                    color: buttonColor,
                  ),
                  Icon(
                    Icons.star_half,
                    color: buttonColor,
                  ),
                ],
              ),
              Text(
                ratingsNum,
                style: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ],
          ),

          ///price
          Text(
            textAlign: TextAlign.start,
            price,
            style: const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),

          ///add to cart button
          Container(
            width: 100,
            margin:
                const EdgeInsets.only(left: 0, right: 12, top: 16, bottom: 0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(12),
                backgroundColor: buttonColor,
              ),
              child: const Text('Ad to cart'),
            ),
          ),
        ],
      ),
    );
  }
}
