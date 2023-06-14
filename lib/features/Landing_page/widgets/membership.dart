import 'package:eesa/features/Landing_page/widgets/membership_item.dart';
import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../global_widgets/primary_button.dart';
import '../constants.dart';

class Membership extends ConsumerWidget {
  const Membership({super.key});

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
            membership,
            style: Theme.of(context).textTheme.heading2large,
          ),
          const SizedBox(
            height: kPadding76,
          ),
          Row(
            children: [
              MembershipItem(
                width: 354,
                color: kGrey2,
                title: free,
                activations: const [
                  true,
                  true,
                  true,
                  true,
                  false,
                  false,
                  false,
                  false,
                  false,
                ],
                onButtonPress: () {},
              ),
              const SizedBox(
                width: kPadding52,
              ),
              MembershipItem(
                width: 376,
                addBorder: true,
                padding: const EdgeInsets.fromLTRB(54, 36, 54, 54),
                title: member,
                buttonHoverColor: kHoverOrange,
                buttonFillGradient:
                    const LinearGradient(colors: [kOrangeColor, kPinkColor]),
                titleSpacing: kPadding32,
                onButtonPress: () {},
              ),
              const SizedBox(
                width: kPadding52,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      enjoyEesaMemberPrivileges,
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
                      learnMoreContent,
                      style: Theme.of(context).textTheme.heading5MediumLarge,
                    ),
                    const SizedBox(
                      height: kPadding24,
                    ),
                    PrimaryButton(
                      height: kPadding56,
                      width: 208,
                      radius: kPadding12,
                      title: learnMore,
                      titleStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                      textGradient: const LinearGradient(
                          colors: [kOrangeColor, kPinkColor]),
                      trailingIcon: SvgPicture.asset(
                        pathToArrowBack,
                        theme: const SvgTheme(
                          currentColor: kPinkColor,
                        ),
                      ),
                      trailingHoverIcon: SvgPicture.asset(
                        pathToArrowBack,
                        color: const Color(0xffcccccc),
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
        ],
      ),
    );
  }
}
