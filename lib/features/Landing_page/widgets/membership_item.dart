import 'package:eesa/features/Landing_page/constants.dart';
import 'package:eesa/features/Landing_page/widgets/membership_item_tile.dart';
import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/global_widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class MembershipItem extends ConsumerWidget {
  const MembershipItem({
    this.buttonHoverColor = kButtonHoverColor,
    required this.onButtonPress,
    required this.title,
    this.addBorder = false,
    this.buttonFillGradient,
    this.titleSpacing = kPadding16,
    this.padding = const EdgeInsets.fromLTRB(
      43,
      36,
      43,
      50,
    ),
    this.height,
    this.width,
    this.color,
    this.activations = const [
      true,
      true,
      true,
      true,
      true,
      true,
      true,
      true,
      true,
    ],
    this.headings = const [
      store,
      booking,
      courses,
      projects,
      eesaAccount,
      eesaCertificate,
      eesaProjects,
      onlineClasses,
      memberPriority,
    ],
    super.key,
  });

  final String title;
  final List<String> headings;
  final List<bool> activations;
  final double? width;
  final double? height;
  final Color? color;
  final VoidCallback onButtonPress;
  final Gradient? buttonFillGradient;
  final EdgeInsets padding;
  final double titleSpacing;
  final bool addBorder;
  final Color buttonHoverColor;

  List<Widget> _tiles() {
    var tiles = <Widget>[];
    if (activations.length == headings.length) {
      for (var element in headings) {
        tiles.add(
          MembershipItemTile(
            heading: element,
            available: activations[headings.indexOf(element)],
          ),
        );
      }
      return tiles;
    } else {
      throw 'The number of activations should be ${headings.length}';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        border: addBorder
            ? const GradientBoxBorder(
                gradient: LinearGradient(colors: [kOrangeColor, kPinkColor]),
                width: 2,
              )
            : null,
        borderRadius: const BorderRadius.all(
          Radius.circular(kPadding24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 28,
              color: kTitleWhite,
            ),
          ),
          SizedBox(
            height: titleSpacing,
          ),
          ..._tiles(),
          const SizedBox(
            height: kPadding16,
          ),
          PrimaryButton(
            radius: 8,
            height: 56,
            width: 268,
            title: start,
            titleStyle: const TextStyle(
              fontSize: fontSize20,
              fontWeight: FontWeight.w600,
            ),
            fillGradient: buttonFillGradient,
            hoverColor: buttonHoverColor,
            onPress: onButtonPress,
          ),
        ],
      ),
    );
  }
}
