import 'package:eesa/features/Landing_page/constants.dart';
import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/global_widgets/primary_button.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeroSection extends ConsumerWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleTextTheme = Theme.of(context).textTheme.displayLarge;
    return Container(
      padding: const EdgeInsets.fromLTRB(kPadding92, 0, kPadding92, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.start,
                  spacing: 0,
                  runSpacing: 0,
                  children: [
                    ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) {
                        return const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.6, 3],
                            colors: [kOrangeColor, kPinkColor]).createShader(
                          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                        );
                      },
                      child: const Text(
                        transcend,
                        style: TextStyle(
                          fontSize: fontSize61,
                          fontWeight: FontWeight.w800,
                          color: kTitleWhite,
                        ),
                      ),
                    ),
                    Text(
                      'your ',
                      style: titleTextTheme,
                    ),
                    Text(
                      'engineering skills ',
                      style: titleTextTheme,
                    ),
                    Text(
                      'to ',
                      style: titleTextTheme,
                    ),
                    Text(
                      'the ',
                      style: titleTextTheme,
                    ),
                    Text(
                      'next ',
                      style: titleTextTheme,
                    ),
                    Text(
                      'level',
                      style: titleTextTheme,
                    ),
                  ],
                ),
                const SizedBox(
                  height: kPadding32,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    subtitle,
                    style: Theme.of(context).textTheme.heading5MediumLarge,
                  ),
                ),
                const SizedBox(
                  height: kPadding32,
                ),
                Row(
                  children: [
                    PrimaryButton(
                      radius: 48,
                      height: 56,
                      width: 208,
                      title: getStarted,
                      trailingIcon: SvgPicture.asset(
                        pathToArrowBack,
                        color: kTitleWhite,
                      ),
                      titleStyle: const TextStyle(
                        fontSize: fontSize20,
                        fontWeight: FontWeight.w600,
                      ),
                      onPress: () {},
                    ),
                    const SizedBox(
                      width: kPadding32,
                    ),
                    PrimaryButton(
                      height: 56,
                      width: 208,
                      radius: 48,
                      title: login,
                      fillColor: Colors.transparent,
                      hoverColor: kButtonHoverColor.withOpacity(0.1),
                      titleStyle: const TextStyle(
                        fontSize: fontSize20,
                        fontWeight: FontWeight.w600,
                      ),
                      textGradient: const LinearGradient(
                          colors: [kButtonColor, kButtonColor]),
                      textHoverGradient: const LinearGradient(
                          colors: [kButtonColor, kButtonColor]),
                      borderColor: kButtonColor,
                      onPress: () {},
                    ),
                  ],
                )
              ]
                  .animate(interval: 0.15.seconds)
                  .slide(
                    duration: 0.6.seconds,
                    begin: const Offset(-0.05, 0),
                    end: const Offset(0, 0),
                    curve: Curves.easeInOut,
                  )
                  .fadeIn(),
            ),
          ),
          const SizedBox(
            width: kPadding60,
          ),
          SizedBox(
            width: 585,
            height: 573,
            child: Image.asset(pathToHeroGear),
          )
              .animate(
                delay: 0.8.seconds,
              )
              .fadeIn(
                duration: 0.5.seconds,
                curve: Curves.easeOut,
              )
              .scaleXY(
                alignment: Alignment.bottomRight,
                begin: 0.9,
                end: 1,
              ),
        ],
      ),
    );
  }
}
