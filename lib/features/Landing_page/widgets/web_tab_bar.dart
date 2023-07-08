import 'package:eesa/features/Landing_page/constants.dart';
import 'package:eesa/features/Landing_page/widgets/web_menu.dart';
import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/global_widgets/primary_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../widgets/WebMenuItem.dart';

class WebTabBar extends StatefulWidget {
  WebTabBar({
    super.key,
  });

  static ScrollController landingPageScrollController = ScrollController();
  bool showShadow = false;

  @override
  State<WebTabBar> createState() => _WebTabBarState();
}

class _WebTabBarState extends State<WebTabBar> {
  @override
  void initState() {
    super.initState();
    WebTabBar.landingPageScrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (WebTabBar.landingPageScrollController.position.pixels ==
        WebTabBar.landingPageScrollController.position.minScrollExtent) {
      widget.showShadow = false;
    } else {
      widget.showShadow = true;
    }
    setState(() {});
  }

  @override
  void dispose() {
    WebTabBar.landingPageScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
          kPadding92, kPadding12, kPadding92, kPadding12),
      decoration: BoxDecoration(
        color: kGrey2,
        boxShadow: widget.showShadow == true
            ? [
                const BoxShadow(
                  color: Colors.black45,
                  blurRadius: 2,
                  offset: Offset(0, 1),
                ),
              ]
            : null,
      ),
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
