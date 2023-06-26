import 'package:eesa/features/Landing_page/widgets/providers/web_menu_controller_provider.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../global_constants/kColorConstants.dart';
import 'controllers/web_menu_item_hover_controller.dart';

// ignore: must_be_immutable
class WebMenuItem extends ConsumerWidget {
  final String title;

  final Function()? onPress;
  final Function()? onHover;

  final FontWeight fontWeight;
  final double fontSize;
  final Color activeColor;
  final Color inactiveColor;
  final Color hoverColor;
  int index = 0;
  Color currentColor = kTextColor;
  bool isTapped = false;

  WebMenuItem({
    super.key,
    required this.title,
    required this.onPress,
    this.onHover,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
    this.activeColor = kTitleWhite,
    this.inactiveColor = kTextColor,
    this.hoverColor = kInputTextColor,
  });

  final _webMenuItemHoverControllerProvider =
      NotifierProvider<WebMenuItemHoverController, bool>(
          WebMenuItemHoverController.new);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isHover = ref.watch(_webMenuItemHoverControllerProvider);
    final index = ref.watch(webMenuControllerProvider);

    if (index == this.index) {
      currentColor = activeColor;
    } else if (isHover == true && index != this.index) {
      currentColor = hoverColor;
    } else {
      currentColor = inactiveColor;
    }

    return Align(
      child: InkWell(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        borderRadius: BorderRadius.circular(kPadding8),
        onHover: (value) {
          ref
              .read(_webMenuItemHoverControllerProvider.notifier)
              .setState(value);

          onHover;
        },
        onTap: () {
          ref.read(webMenuControllerProvider.notifier).update(this.index);

          onPress;
        },
        child: Padding(
          padding: const EdgeInsets.all(kPadding8),
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyLargeSemibold.copyWith(
                  color: currentColor,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
          ),
        ),
      ),
    );
  }
}
