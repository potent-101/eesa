import 'dart:developer';

import 'package:eesa/features/Landing_page/constants.dart';
import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/global_widgets/controllers.dart';
import 'package:eesa/global_widgets/providers.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChainButton extends ConsumerWidget {
  ChainButton({
    required this.buttonText,
    this.index = 1,
    this.listen = true,
    super.key,
  });

  final String buttonText;
  final int index;
  final bool listen;

  final _chainButtonControllerProvider =
      NotifierProvider<ChainButtonController, bool>(ChainButtonController.new);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isHovered = ref.watch(_chainButtonControllerProvider);
    final index = ref.watch(chainButtonListControllerProvider);

    Color buttonColor;
    Color buttonTextColor;

    if (listen == true) {
      if (index == this.index) {
        buttonColor = kButtonColor;
        buttonTextColor = kTitleWhite;
      } else if (isHovered == true && index != this.index) {
        buttonColor = kGrey4;
        buttonTextColor = kInputTextColor;
      } else {
        buttonColor = kGrey5;
        buttonTextColor = kTextColor;
      }
    } else {
      buttonColor = kButtonColor;
      buttonTextColor = kTitleWhite;
    }

    return InkWell(
      onHover: (value) {
        ref.read(_chainButtonControllerProvider.notifier).toggle();
      },
      onTap: () {
        if (listen == true) {
          ref
              .read(chainButtonListControllerProvider.notifier)
              .update(this.index);
        }
      },
      overlayColor: MaterialStateProperty.all(
        Colors.transparent,
      ),
      child: AnimatedContainer(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: kPadding12,
          horizontal: kPadding16,
        ),
        constraints: const BoxConstraints(minWidth: 94),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              kPadding8,
            ),
          ),
        ),
        duration: const Duration(
          milliseconds: 50,
        ),
        curve: Curves.easeOut,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: AnimatedDefaultTextStyle(
                style: Theme.of(context).textTheme.bodyLargeRegular.copyWith(
                      color: buttonTextColor,
                      height: listen == true ? 0 : 1.45,
                    ),
                duration: const Duration(milliseconds: 50),
                curve: Curves.easeOut,
                child: Text(
                  buttonText,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            if (listen == false)
              Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(
                  pathToTickCircle,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
