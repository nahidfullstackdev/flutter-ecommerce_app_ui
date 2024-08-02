import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/widgets/custom_search.dart';
import 'package:ecommerce_app/widgets/item_list.dart';
import 'package:ecommerce_app/widgets/item_list_3.dart';
import 'package:ecommerce_app/widgets/items.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: locationBarColor,
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
          child: width < 600
              ? Column(
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
                    Container(
                      height: 400,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/beauty.jpg',
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            top: 150,
                            bottom: 8,
                            left: 2,
                            right: 2,
                            child: SizedBox(
                              height: 230,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: itemList.length,
                                itemBuilder: (context, index) => Items(
                                  image: itemList[index]['image'].toString(),
                                  title: itemList[index]['title'].toString(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const ItemList3(
                      title: 'Score the top PCs & Accessories',
                    ),
                    const Divider(
                      height: 0.5,
                      color: Color.fromARGB(255, 222, 222, 222),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: 230,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: itemList.length,
                        itemBuilder: (context, index) => Items(
                          image: itemList[index]['image'].toString(),
                          title: itemList[index]['title'].toString(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const ItemList3(
                      title: 'Shoes Under USD 60 ',
                    ),
                  ],
                )
              :

              //...if mobile is rotated...
              Column(
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
                    Container(
                      height: 400,
                      width: 200,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/beauty.jpg',
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            top: 150,
                            bottom: 8,
                            left: 2,
                            right: 2,
                            child: SizedBox(
                              height: 230,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: itemList.length,
                                itemBuilder: (context, index) => Items(
                                  image: itemList[index]['image'].toString(),
                                  title: itemList[index]['title'].toString(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const ItemList3(
                      title: 'Score the top PCs & Accessories',
                    ),
                    const Divider(
                      height: 0.5,
                      color: Color.fromARGB(255, 222, 222, 222),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: 230,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: itemList.length,
                        itemBuilder: (context, index) => Items(
                          image: itemList[index]['image'].toString(),
                          title: itemList[index]['title'].toString(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const ItemList3(
                      title: 'Shoes Under USD 60 ',
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
