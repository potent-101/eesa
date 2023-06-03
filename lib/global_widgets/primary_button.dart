import 'package:eesa/features/Landing_page/constants.dart';
import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gradient_borders/gradient_borders.dart';

class PrimaryButton extends ConsumerWidget {
  PrimaryButton(
      {required this.title,
      required this.onPress,
      this.height,
      this.width,
      this.leadingIcon,
      this.trailingIcon,
      this.leadingHoverIcon,
      this.trailingHoverIcon,
      this.leadIconSpace = 0.0,
      this.trailIconSpace = 0.0,
      this.radius = 8,
      this.borderGradient,
      this.fillGradient,
      this.borderColor,
      this.hoverColor = kButtonHoverColor,
      this.hoverGradient,
      this.textGradient =
          const LinearGradient(colors: [kTitleWhite, kTitleWhite]),
      this.borderWidth = 2,
      this.fillColor = kButtonColor,
      this.titleStyle = const TextStyle(
        color: kTitleWhite,
        fontSize: fontSize16,
        fontWeight: FontWeight.w600,
      ),
      this.padding = 0,
      super.key});

  final double? height;
  final double? width;
  final Widget? leadingIcon;
  final Widget? leadingHoverIcon;
  final double leadIconSpace;
  final Widget? trailingIcon;
  final Widget? trailingHoverIcon;
  final double trailIconSpace;
  final String title;
  final VoidCallback onPress;
  final double radius;
  final Gradient? borderGradient;
  final Gradient? fillGradient;
  final Color? fillColor;
  final Color? borderColor;
  final Color hoverColor;
  final Gradient? hoverGradient;
  final Gradient textGradient;
  final double borderWidth;
  final double padding;
  final TextStyle titleStyle;

  final _buttonHoverStateProvider = StateProvider<bool>((ref) {
    return false;
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isHovered = ref.watch(_buttonHoverStateProvider);

    BoxBorder? boxBorder() {
      if (borderColor != null && borderGradient != null) {
        return GradientBoxBorder(
          gradient: borderGradient!,
          width: borderWidth,
        );
      } else if (borderColor != null && borderGradient == null) {
        return Border.all(color: borderColor!, width: borderWidth);
      } else if (borderColor == null && borderGradient != null) {
        return GradientBoxBorder(
          gradient: borderGradient!,
          width: borderWidth,
        );
      } else {
        return null;
      }
    }

    Widget? leadIcon() {
      if (isHovered == true) {
        if (leadingHoverIcon != null) {
          return leadingHoverIcon;
        } else {
          return null;
        }
      } else {
        if (leadingIcon != null) {
          return leadingIcon;
        } else {
          return null;
        }
      }
    }

    Widget? trailIcon() {
      if (isHovered) {
        if (trailingHoverIcon != null) {
          return trailingHoverIcon;
        } else {
          return null;
        }
      } else {
        if (trailingIcon != null) {
          return trailingIcon;
        } else {
          return null;
        }
      }
    }

    return InkWell(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      onTap: onPress,
      onHover: (value) {
        ref.read(_buttonHoverStateProvider.notifier).state = value;
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: boxBorder(),
          gradient: isHovered ? hoverGradient : fillGradient,
          color: isHovered ? hoverColor : fillColor,
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (leadIcon() != null) leadIcon()!,
              SizedBox(
                width: leadIconSpace,
              ),
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  if (isHovered) {
                    return const LinearGradient(
                        colors: [kTitleWhite, kTitleWhite]).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    );
                  } else {
                    return textGradient.createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    );
                  }
                },
                child: Text(title, style: titleStyle),
              ),
              SizedBox(
                width: trailIconSpace,
              ),
              if (trailIcon() != null) trailIcon()!,
            ],
          ),
        ),
      ),
    );
  }
}
