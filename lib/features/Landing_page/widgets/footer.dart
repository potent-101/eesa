import 'package:eesa/features/Landing_page/constants.dart';
import 'package:eesa/features/Landing_page/widgets/tap_text.dart';
import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../global_constants/kPaddingConstants.dart';

class FooterWidget extends ConsumerWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final separator = Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding12),
      child: UnconstrainedBox(
        child: Container(
          width: 2,
          height: 2,
          color: kFooterColor,
        ),
      ),
    );

    return Container(
      padding: const EdgeInsets.fromLTRB(
        kPadding84,
        kPadding52,
        kPadding104,
        kPadding24,
      ),
      color: const Color(0xff0f0f0f),
      child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 132,
              height: 132,
              child: Image.asset(
                pathToEgertonLogo,
              ),
            ),
            const SizedBox(
              width: kPadding12,
            ),
            Expanded(
              child: Row(
                children: [
                  SvgPicture.asset(
                    pathToInstagram,
                    width: 42,
                    height: 42,
                  ),
                  const SizedBox(
                    width: kPadding12,
                  ),
                  SvgPicture.asset(
                    pathToFacebook,
                    width: 42,
                    height: 42,
                  ),
                  const SizedBox(
                    width: kPadding12,
                  ),
                  SvgPicture.asset(
                    pathToTwitter,
                    width: 42,
                    height: 42,
                  ),
                  const SizedBox(
                    width: kPadding12,
                  ),
                  SvgPicture.asset(
                    pathToYoutube,
                    width: 42,
                    height: 42,
                  ),
                  const Spacer(),
                  TapText(text: copywrite2023),
                  separator,
                  TapText(
                    text: termsAndConditions,
                    onTap: () {},
                  ),
                  separator,
                  TapText(
                    text: privacyPolicy,
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
