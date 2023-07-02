import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controllers/accordion_item_controller.dart';

class TapText extends ConsumerWidget {
  TapText({
    this.onTap,
    this.color = kFooterColor,
    this.hoverColor = kButtonHoverColor,
    required this.text,
    super.key,
  });

  final VoidCallback? onTap;
  final String text;
  final Color hoverColor;
  final Color color;

  final _tapTextControllerProvider =
      NotifierProvider<AccordionItemController, bool>(
          AccordionItemController.new);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hovered = ref.watch(_tapTextControllerProvider);
    return InkWell(
      onTap: onTap,
      onHover: (value) =>
          ref.read(_tapTextControllerProvider.notifier).toggle(),
      overlayColor: MaterialStateProperty.all(
        Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(kPadding8),
        child: Text(
          text,
          style: Theme.of(context).textTheme.footerSemibold.copyWith(
                color: hovered ? hoverColor : color,
              ),
        ),
      ),
    );
  }
}
