import 'package:eesa/features/Landing_page/constants.dart';
import 'package:eesa/features/Landing_page/widgets/web_menu.dart';
import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/global_widgets/primary_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../widgets/WebMenuItem.dart';

class WebTabBar extends StatelessWidget {
  const WebTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
          kPadding92, kPadding12, kPadding92, kPadding12),
      constraints: const BoxConstraints(maxWidth: double.infinity),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(pathToLogo),
          const Spacer(),
          WebMenu(
            children: [
              WebMenuItem(
                title: home,
                onPress: () {},
              ),
              WebMenuItem(
                title: contact,
                onPress: () {},
              ),
              WebMenuItem(
                title: about,
                onPress: () {},
              ),
            ],
          ),
          const SizedBox(
            width: kPadding56,
          ),
          PrimaryButton(
            height: kPadding44,
            width: kPadding104,
            title: login,
            onPress: () {},
          ),
          const SizedBox(
            width: kPadding32,
          ),
          PrimaryButton(
            height: kPadding44,
            width: kPadding128,
            title: donate,
            textGradient:
                const LinearGradient(colors: [kOrangeColor, kPinkColor]),
            leadingIcon: SvgPicture.asset(pathToHearts),
            leadingHoverIcon: SvgPicture.asset(
              pathToHearts,
              color: kTitleWhite,
            ),
            leadIconSpace: 10,
            fillColor: null,
            borderGradient:
                const LinearGradient(colors: [kOrangeColor, kPinkColor]),
            hoverGradient:
                const LinearGradient(colors: [kOrangeColor, kPinkColor]),
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
