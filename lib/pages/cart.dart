import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/widgets/cart_item.dart';
import 'package:ecommerce_app/widgets/custom_search.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: //..search box at the top bar...
            InkWell(
          child: Container(
            padding: const EdgeInsets.all(8),
            height: 45,
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            decoration: const BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                const Icon(Icons.search),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Search Amazon',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[400], fontSize: 20),
                ),
                const Spacer(),
                const Icon(
                  Icons.flip_camera_ios_outlined,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          onTap: () {
            showSearch(context: context, delegate: CustomSearchDeligate());
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 8),
              height: 40,
              width: double.infinity,
              decoration: const BoxDecoration(color: locationBarColor),
              child: const Row(
                children: [
                  Icon(Icons.location_on),
                  Text(
                    'Deliver to Bangladesh',
                    style: TextStyle(color: Colors.black),
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            CircleAvatar(
              backgroundColor: circleColor,
              radius: 100,
              child: Image.asset('assets/images/cart.png'),
            ),
            const Text(
              'Your Amazon Cart is empty',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            const Text(
              'Nothing is here. Only possibilities',
              style: TextStyle(
                  color: Color.fromARGB(255, 115, 114, 114),
                  fontWeight: FontWeight.normal,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Shop today\'s deals',
              style: TextStyle(
                  color: Color.fromARGB(255, 32, 99, 154),
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(
                  left: 12, right: 12, top: 16, bottom: 0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(12),
                  backgroundColor: buttonColor,
                ),
                child: const Text('Sign in to your account'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 12, right: 12, top: 16, bottom: 12),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(12),
                  backgroundColor: Colors.grey.shade100,
                ),
                child: const Text('Sign up now'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(12),
              height: 480,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, top: 8),
                    child: Text(
                      'New international customers \npurchased',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CartItem(
                              image: 'assets/images/bag.jpg',
                              itemName: 'Shopping bag',
                              ratingsNum: '37,254',
                              price: '\$27'),
                          CartItem(
                              image: 'assets/images/girl.jpg',
                              itemName: 'Shopping bag',
                              ratingsNum: '37,254',
                              price: '\$27'),
                          CartItem(
                              image: 'assets/images/laptop.jpg',
                              itemName: 'Shopping bag',
                              ratingsNum: '37,254',
                              price: '\$27'),
                          CartItem(
                              image: 'assets/images/bag.jpg',
                              itemName: 'Shopping bag',
                              ratingsNum: '37,254',
                              price: '\$27'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
