import 'package:animation_list_test/list_item_page.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ListItem({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ItemPage(title: title),
            ),
          );
        },
      ),
    );
  }
}
