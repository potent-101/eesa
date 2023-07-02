import 'package:eesa/features/Landing_page/widgets/WebMenuItem.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WebMenu extends ConsumerWidget {
  const WebMenu({
    super.key,
    this.children = const [],
    this.separatorWidget = const SizedBox(
      width: kPadding44,
    ),
    this.height = kPadding44,
  });

  final List<WebMenuItem> children;
  final double height;
  final Widget separatorWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: height,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            children[index].index = index;
            return children[index];
          }),
          separatorBuilder: (context, index) {
            return separatorWidget;
          },
          itemCount: children.length),
    );
  }
}
