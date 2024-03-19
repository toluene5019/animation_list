import 'package:animation_list/animation_list.dart';
import 'package:animation_list_test/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'data.dart';

class AnimationListPage extends StatefulWidget {
  const AnimationListPage({
    super.key,
  });

  @override
  State<AnimationListPage> createState() => _AnimationListPageState();
}

class _AnimationListPageState extends State<AnimationListPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimationList(
            duration: 1000,
            reBounceDepth: 20,
            children: data.map((item) {
              return ListItem(
                title: item,
                onTap: () {},
              );
            }).toList()),
      ),
    );
  }
}
