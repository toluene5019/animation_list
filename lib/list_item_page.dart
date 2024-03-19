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

class ItemPage extends StatelessWidget {
  final String title;

  const ItemPage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          ' $title',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
