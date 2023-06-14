import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class MembershipItemTile extends ConsumerWidget {
  const MembershipItemTile({
    required this.heading,
    this.available = true,
    super.key,
  });

  final String heading;
  final bool available;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Text(
            heading,
            style: const TextStyle(
              fontSize: fontSize20,
              fontWeight: FontWeight.w500,
              color: kTitleWhite,
            ),
          ),
          const Spacer(),
          available
              ? SvgPicture.asset(pathToCheck)
              : SvgPicture.asset(pathToCancel),
        ],
      ),
    );
  }
}
