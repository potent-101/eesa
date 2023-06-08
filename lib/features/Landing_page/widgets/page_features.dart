import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageFeatures extends ConsumerWidget {
  const PageFeatures({
    this.children = const [],
    super.key,
  });

  final List<Widget> children;

  List<Widget> childrenFun() {
    List<Widget> newList = [];
    int counter = 0;
    for (var child in children) {
      newList.add(child);
      if (children.length - 1 != counter) {
        newList.add(const SizedBox(
          height: kPadding80,
        ));
      }
      counter++;
    }
    return newList;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: kPadding32, bottom: kPadding52),
      child: Column(
        children: [...childrenFun()],
      ),
    );
  }
}
