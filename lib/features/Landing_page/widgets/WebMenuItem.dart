import 'package:eesa/features/Landing_page/models/providers/IsActiveProvider.dart';
import 'package:eesa/features/Landing_page/models/providers/WebMenuItemHoverProvider.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../global_constants/kColorConstants.dart';
import '../constants.dart';

class WebMenuItem extends ConsumerWidget {
  final String title;
  final int index;
  final VoidCallback onPress;
  final Function(bool value)? onHover;
  final bool isActive;

  const WebMenuItem(
      {super.key,
      this.isActive = false,
      required this.title,
      required this.onPress,
      required this.index,
      required this.onHover});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int refIndex = ref.watch(webMenuItemHoverProvider);
    int isRefActive = ref.watch(isActiveProvider);

    Color _itemColor() {
      if ((index == isRefActive) ||
          (refIndex == index && index == isRefActive)) {
        return kTitleWhite;
      } else if (index == refIndex) {
        return kInputTextColor;
      } else {
        return kTextColor;
      }
    }

    return InkWell(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      borderRadius: BorderRadius.circular(kPadding8),
      onHover: onHover,
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(kPadding8),
        child: Text(
          title,
          style: TextStyle(
            color: _itemColor(),
            fontSize: fontSize16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
