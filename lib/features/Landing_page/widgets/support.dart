import 'package:eesa/features/Landing_page/constants.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../global_constants/kColorConstants.dart';
import '../../../global_constants/kPaddingConstants.dart';
import '../../../global_widgets/primary_button.dart';

class Support extends ConsumerWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        kPadding84,
        kPadding88,
        kPadding84,
        kPadding128,
      ),
      decoration: const BoxDecoration(color: kGrey1),
      child: Column(
        children: [
          Text(
            support,
            style: Theme.of(context).textTheme.heading2large,
          ),
          const SizedBox(
            height: kPadding64,
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 927),
            padding: const EdgeInsets.symmetric(
              horizontal: kPadding88,
              vertical: kPadding56,
            ),
            decoration: BoxDecoration(
              color: kGrey2s,
              borderRadius: BorderRadius.circular(kPadding48),
            ),
            child: Row(
              children: [
                Container(
                  width: 235,
                  height: 235,
                  decoration: BoxDecoration(
                    color: kGrey1,
                    borderRadius: BorderRadius.circular(
                      kPadding124,
                    ),
                  ),
                  child: Image.asset(pathToHands),
                ),
                const SizedBox(
                  width: kPadding52,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        allAboutTeamWork,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: kTitleWhite,
                        ),
                      ),
                      const SizedBox(
                        height: kPadding16,
                      ),
                      Text(
                        teamWorkContent,
                        style: Theme.of(context).textTheme.heading5MediumLarge,
                      ),
                      const SizedBox(
                        height: kPadding24,
                      ),
                      PrimaryButton(
                        height: kPadding44,
                        width: kPadding128,
                        title: donate,
                        textGradient: const LinearGradient(
                            colors: [kOrangeColor, kPinkColor]),
                        leadingIcon: SvgPicture.asset(pathToHearts),
                        leadingHoverIcon: SvgPicture.asset(
                          pathToHearts,
                          color: kTitleWhite,
                        ),
                        leadIconSpace: 10,
                        fillColor: null,
                        borderGradient: const LinearGradient(
                            colors: [kOrangeColor, kPinkColor]),
                        hoverGradient: const LinearGradient(
                            colors: [kOrangeColor, kPinkColor]),
                        onPress: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
