import 'package:animation_list_test/data.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';

class SearchBarPage extends StatefulWidget {
  const SearchBarPage({super.key});

  @override
  State<SearchBarPage> createState() => _SearchBarPageState();
}

class _SearchBarPageState extends State<SearchBarPage> {
  String searchValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EasySearchBar(
        title: const Text('Search Bar Example'),
        backgroundColor: Colors.blue,
        suggestions: data,
        onSearch: (value) {
          setState(() {
            searchValue = value;
          });
        },
      ),
      body: Center(
        child: Text('Value: $searchValue'),
      ),
    );
  }
}
