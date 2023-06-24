import 'package:eesa/features/Landing_page/widgets/accordion_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Accordion extends ConsumerWidget {
  const Accordion({
    required this.children,
    required this.featureSpacing,
    super.key,
  });

  final List<AccordionItem> children;
  final double featureSpacing;

  List<Widget> _childrenFun() {
    List<Widget> newList = [];
    int counter = 0;
    for (var child in children) {
      newList.add(child);
      child.itemIndex(index: newList.indexOf(child));
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
    return Column(
      children: _childrenFun(),
    );
  }
}
