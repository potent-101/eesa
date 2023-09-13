import 'package:eesa/features/Landing_page/constants.dart';
import 'package:eesa/features/Landing_page/widgets/page_feature_item.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../global_constants/kColorConstants.dart';

class About extends StatelessWidget {
  const About({super.key});

  final contentSpacing = const SizedBox(
    height: kPadding68,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 90,
        right: 252,
        left: 252,
        bottom: 64,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds) {
              return const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0, 1],
                  colors: [kOrangeColor, kPinkColor]).createShader(
                Rect.fromLTWH(0, 0, bounds.width, bounds.height),
              );
            },
            child: const Text(
              aboutUs,
              style: TextStyle(
                fontSize: fontSize39,
                fontWeight: FontWeight.w700,
                color: kTitleWhite,
              ),
            ),
          ),
          const SizedBox(
            height: kPadding44,
          ),
          PageFeatureItem(
            itemTitle: theAssociation,
            itemContent: assContent,
            titleStyle: Theme.of(context).textTheme.heading4Largebold,
            contentStyle: Theme.of(context).textTheme.bodyLargeRegular,
          ),
          contentSpacing,
          PageFeatureItem(
            itemTitle: aimsandobjectives,
            itemContent: aimsContent,
            titleStyle: Theme.of(context).textTheme.heading4Largebold,
            contentStyle: Theme.of(context).textTheme.bodyLargeRegular,
          ),
          contentSpacing,
          PageFeatureItem(
            itemTitle: theMission,
            itemContent: theMissionContent,
            titleStyle: Theme.of(context).textTheme.heading4Largebold,
            contentStyle: Theme.of(context).textTheme.bodyLargeRegular,
          ),
        ]
            .animate(interval: 130.ms)
            .fade(duration: 300.ms, curve: Curves.easeInOut)
            .moveY(begin: 12, end: 0),
      ),
    );
  }
}
