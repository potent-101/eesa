import 'package:eesa/features/Landing_page/constants.dart';
import 'package:eesa/features/Landing_page/widgets/eesa_offers.dart';
import 'package:eesa/features/Landing_page/widgets/hero_section.dart';
import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:flutter/material.dart';
import '../../../global_constants/kPaddingConstants.dart';
import '../widgets/web_tab_bar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    const SizedBox widgetSpacing = SizedBox(
      height: 54,
    );
    return Scaffold(
        backgroundColor: kGrey2,
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const WebTabBar(),
                Expanded(
                  child: Container(
                    padding:
                        const EdgeInsets.fromLTRB(kPadding92, 0, kPadding92, 0),
                    constraints: const BoxConstraints(maxWidth: kMaxWidth),
                    child: ListView(
                      children: const [
                        HeroSection(),
                        widgetSpacing,
                        EssaOffers(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
