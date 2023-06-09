import 'package:eesa/features/Landing_page/constants.dart';
import 'package:eesa/features/Landing_page/widgets/eesa_offers.dart';
import 'package:eesa/features/Landing_page/widgets/faq_section.dart';
import 'package:eesa/features/Landing_page/widgets/final_CTA_widget.dart';
import 'package:eesa/features/Landing_page/widgets/footer.dart';
import 'package:eesa/features/Landing_page/widgets/hero_section.dart';
import 'package:eesa/features/Landing_page/widgets/membership.dart';
import 'package:eesa/features/Landing_page/widgets/page_feature_item.dart';
import 'package:eesa/features/Landing_page/widgets/page_features.dart';
import 'package:eesa/features/Landing_page/widgets/support.dart';
import 'package:eesa/features/Landing_page/widgets/testimonial.dart';
import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:flutter/material.dart';
import '../../../global_constants/kPaddingConstants.dart';
import '../widgets/web_tab_bar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Expanded(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: kMaxWidth),
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context)
                        .copyWith(scrollbars: false),
                    child: ListView(
                      controller: WebTabBar.landingPageScrollController,
                      children: const [
                        SizedBox(
                          height: 70,
                        ),
                        HeroSection(),
                        widgetSpacing,
                        EssaOffers(),
                        widgetSpacing,
                        PageFeatures(
                          children: [
                            PageFeatureItem(
                              imageWidth: 527,
                              imageHeight: 503,
                              pathToImage: pathToIdeaBulb,
                              itemTitle: projectFeatureTitle,
                              itemContent: projectFeatureContent,
                            ),
                            PageFeatureItem(
                              imageWidth: 442.78,
                              imageHeight: 509.99,
                              padding: EdgeInsets.only(right: kPadding24),
                              pathToImage: pathToRocket,
                              itemTitle: courseFeatureTitle,
                              itemContent: courseFeatureContent,
                              imageFirst: false,
                            ),
                            PageFeatureItem(
                              imageWidth: 543,
                              imageHeight: 394,
                              pathToImage: pathToShoppingBasket,
                              itemTitle: storeFeatureTitle,
                              itemContent: storeFeatureContent,
                            ),
                          ],
                        ),
                        Membership(),
                        widgetSpacing,
                        PageFeatures(
                          featureSpacing: kPadding132,
                          children: [
                            PageFeatureItem(
                              imageWidth: 535,
                              imageHeight: 295,
                              pathToImage: pathToPlayback,
                              itemTitle: classesFeatureTitle,
                              itemContent: classesFeatureContent,
                            ),
                            PageFeatureItem(
                              imageWidth: 436,
                              imageHeight: 402,
                              imageFirst: false,
                              pathToImage: pathToBell,
                              itemTitle: eventsFeatureTitle,
                              itemContent: evectsFeatureContent,
                            ),
                          ],
                        ),
                        widgetSpacing,
                        Support(),
                        widgetSpacing,
                        Testimonials(),
                        widgetSpacing,
                        FAQSection(),
                        widgetSpacing,
                        FinalCTAWidget(),
                        widgetSpacing,
                        FooterWidget(),
                      ],
                    ),
                  ),
                ),
              ),
              WebTabBar(),
            ],
          ),
        ),
      ),
    );
  }
}
