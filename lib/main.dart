
import 'package:animation_list/animation_list.dart';
import 'package:animation_list_test/datat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  Widget _buildTile(BuildContext context, String title) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimationList(
            duration: 1000,
            reBounceDepth: 20,
            children: data.map((item) {
              return _buildTile(
                context,
                item,
              );
            }).toList()),
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

