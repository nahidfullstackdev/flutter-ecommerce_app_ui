import 'package:ecommerce_app/utils/colors.dart';
import 'package:ecommerce_app/widgets/custom_search.dart';
import 'package:ecommerce_app/widgets/dropdownlist.dart';

import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  var selectedValu = 'Arts & Crafts';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              showSearch(
                context: context,
                delegate: CustomSearchDeligate(),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(4.0, 4.0),
                        blurRadius: 15,
                        spreadRadius: 1.5),
                  ],
                ),
                child: ExpansionTile(
                  title: const Text('Shop by Department'),
                  childrenPadding: const EdgeInsets.all(5),
                  expandedAlignment: Alignment.topLeft,
                  children: [
                    for (final shop in dropDownList)
                      ListTile(
                        title: Text(
                          textAlign: TextAlign.start,
                          shop['title'].toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(4.0, 4.0),
                        blurRadius: 15,
                        spreadRadius: 1.5),
                  ],
                ),
                child: const ExpansionTile(
                  title: Text('Settings'),
                  childrenPadding: EdgeInsets.all(5),
                  expandedAlignment: Alignment.topLeft,
                  children: [
                    ListTile(
                      title: Text(
                        'Notification',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Permission',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Legal & about',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 16,
                ),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(4.0, 4.0),
                        blurRadius: 15,
                        spreadRadius: 1.5),
                  ],
                ),
                child: const Row(
                  children: [
                    Text(
                      'Customer Service',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 16,
                ),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(4.0, 4.0),
                        blurRadius: 15,
                        spreadRadius: 1.5),
                  ],
                ),
                child: const Row(
                  children: [
                    Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
