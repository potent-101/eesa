import 'package:eesa/features/Landing_page/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../global_constants/kPaddingConstants.dart';

class FooterWidget extends ConsumerWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            Row(
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
                //const Spacer(),
                // Row(
                //   children: [],
                // ),
              ],
            )
          ],
        ),
        // Row(
        //   children: [],
        // ),
      ]),
    );
  }
}
