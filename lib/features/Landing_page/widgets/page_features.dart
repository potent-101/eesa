import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageFeatures extends ConsumerWidget {
  const PageFeatures({
    this.children = const [],
    this.featureSpacing = kPadding80,
    super.key,
  });

  final List<Widget> children;
  final double featureSpacing;

  List<Widget> _childrenFun() {
    List<Widget> newList = [];
    int counter = 0;
    for (var child in children) {
      newList.add(child);
      if (children.length - 1 != counter) {
        newList.add(
          SizedBox(
            height: featureSpacing,
          ),
        );
      }
      counter++;
    }
    return newList;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.fromLTRB(kPadding92, 0, kPadding92, 0),
      child: Padding(
        padding: const EdgeInsets.only(top: kPadding32, bottom: kPadding52),
        child: Column(
          children: [..._childrenFun()],
        ),
      ),
    );
  }
}
