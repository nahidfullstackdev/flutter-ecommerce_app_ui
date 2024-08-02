import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/widgets/item_list_tile.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text(
            'amazon',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Hello',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        ////flag..
                        Image.asset(
                          'assets/images/usaflag.png',
                          height: 24,
                          width: 24,
                        ),
                        const Text(
                          'EN',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  textAlign: TextAlign.center,
                  'Sign in for the best /nexperience',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(12),
                      backgroundColor: buttonColor,
                    ),
                    child: const Text('Sign in'),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(12),
                      backgroundColor: Colors.grey.shade100,
                    ),
                    child: const Text('Create account'),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  children: [
                    Text(
                      'Buying for work?',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Create a free business account',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const ItemListTile(
                    image: 'assets/images/box.png',
                    itemName:
                        'Check order status and track change or return items'),
                const SizedBox(
                  height: 12,
                ),
                const ItemListTile(
                    image: 'assets/images/shoppingbag.png',
                    itemName: 'Shop past purchases and everyday essentials'),
                const SizedBox(
                  height: 12,
                ),
                const ItemListTile(
                    image: 'assets/images/list.png',
                    itemName: 'Create lists with items you want, now or later')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
