import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../global_constants/kColorConstants.dart';
import '../../../global_constants/kPaddingConstants.dart';
import '../../../global_widgets/primary_button.dart';
import '../constants.dart';

class FinalCTAWidget extends ConsumerWidget {
  const FinalCTAWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        kPadding84,
        kPadding84,
        kPadding84,
        kPadding84,
      ),
      child: Column(
        children: [
          Text(
            startYourEESAExperienceToday,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.heading3large,
          ),
          const SizedBox(
            height: kPadding24,
          ),
          PrimaryButton(
            radius: 48,
            height: 56,
            width: 208,
            title: getStarted,
            trailingIcon: SvgPicture.asset(
              pathToArrowBack,
              color: kTitleWhite,
            ),
            titleStyle: const TextStyle(
              fontSize: fontSize20,
              fontWeight: FontWeight.w600,
            ),
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
