import 'package:eesa/features/Landing_page/constants.dart';
import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:eesa/global_widgets/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrimaryButton extends ConsumerWidget {
  const PrimaryButton(
      {required this.title,
      required this.onPress,
      this.height,
      this.width,
      this.leadingIcon,
      this.trailingIcon,
      this.radius = 8,
      super.key});

  final double? height;
  final double? width;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final String title;
  final VoidCallback onPress;
  final double radius;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isHovered = ref.watch(buttonHoverStateProvider);
    return InkWell(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      onTap: onPress,
      onHover: (value) {
        ref.read(buttonHoverStateProvider.notifier).state = value;
      },
      child: Container(
        constraints: BoxConstraints.expand(
          height: height,
          width: width,
        ),
        decoration: BoxDecoration(
          color: isHovered ? kButtonHoverColor : kButtonColor,
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (leadingIcon != null) leadingIcon!,
              Text(
                title,
                style: const TextStyle(
                  color: kTitleWhite,
                  fontSize: fontSize16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (trailingIcon != null) trailingIcon!,
            ],
          ),
        ),
      ),
    );
  }
}
