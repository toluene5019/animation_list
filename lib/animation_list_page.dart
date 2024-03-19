import 'package:animation_list/animation_list.dart';
import 'package:animation_list_test/list_item_page.dart';
import 'package:flutter/material.dart';
import 'data.dart';

class AnimationListPage extends StatelessWidget {
  const AnimationListPage({
    super.key,
  });

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
