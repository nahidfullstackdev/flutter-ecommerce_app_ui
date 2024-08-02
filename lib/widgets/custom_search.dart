import 'package:ecommerce_app/widgets/dropdownlist.dart';
import 'package:flutter/material.dart';

class CustomSearchDeligate extends SearchDelegate {
  final List<String> searchterms = [
    'Pents',
    'Shirts',
    'Tshirts',
    'Mobile',
    'Iphone',
    'Samsung',
    'cosmetics',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<String> machQuery = [];

    for (var items in dropDownList) {
      if (items['title']
          .toString()
          .toLowerCase()
          .contains(query.toLowerCase())) {
        machQuery.add(items['title'].toString());
      }
    }

    return ListView.builder(
      itemCount: machQuery.length,
      itemBuilder: (context, index) {
        var results = machQuery[index];
        return ListTile(
          title: Text(results),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> machQuery = [];

    for (var items in dropDownList) {
      if (items['title']
          .toString()
          .toLowerCase()
          .contains(query.toLowerCase())) {
        machQuery.add(items['title'].toString());
      }
    }

    return ListView.builder(
      itemCount: machQuery.length,
      itemBuilder: (context, index) {
        var results = machQuery[index];
        return ListTile(
          title: Text(results),
        );
      },
    );
  }
}
