import 'package:eesa/features/Contact/presentation/contact_modal.dart';
import 'package:eesa/features/Donation/presentation/widgets/donation_modal.dart';
import 'package:eesa/features/Landing_page/constants.dart';
import 'package:eesa/features/Landing_page/widgets/about.dart';
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
import 'package:eesa/global_widgets/primary_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../global_constants/kPaddingConstants.dart';
import '../widgets/providers/web_menu_controller_provider.dart';
import '../widgets/web_tab_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingPage extends ConsumerStatefulWidget {
  const LandingPage({super.key});

  @override
  ConsumerState<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<LandingPage> {
  List<Widget> home = [];
  int index = 0;
  List<Widget> setLPScreen() {
    if (index == 0) {
      return [
        ...home,
      ];
    } else if (index == 1) {
      return [
        const DonationModal(),
      ];
    } else {
      return const [
        About(),
      ];
    }
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    index = ref.watch(webMenuControllerProvider);
    const SizedBox widgetSpacing = SizedBox(
      height: 54,
    );

    home = const [
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
    ];

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
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        ...setLPScreen(),
                        const FooterWidget(),
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
