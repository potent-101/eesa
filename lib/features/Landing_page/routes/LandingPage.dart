import 'dart:developer';

import 'package:eesa/features/Landing_page/constants.dart';
import 'package:eesa/features/Landing_page/models/providers/IsActiveProvider.dart';
import 'package:eesa/features/Landing_page/models/providers/WebMenuItemHoverProvider.dart';
import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/global_widgets/primary_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../widgets/WebMenuItem.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kGrey2,
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: SafeArea(
                  child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(
                        kPadding92, kPadding12, kPadding92, kPadding12),
                    constraints: const BoxConstraints(maxWidth: kMaxWidth),
                    child: Consumer(
                      builder:
                          (BuildContext context, WidgetRef ref, Widget? child) {
                        return Row(
                          children: [
                            SvgPicture.asset(pathToLogo),
                            const Spacer(),
                            WebMenuItem(
                              title: home,
                              onPress: () {
                                ref.read(isActiveProvider.notifier).state = 1;
                              },
                              index: 1,
                              onHover: (bool value) {
                                if (value == true) {
                                  ref
                                      .read(webMenuItemHoverProvider.notifier)
                                      .state = 1;
                                } else {
                                  ref
                                      .read(webMenuItemHoverProvider.notifier)
                                      .state = 0;
                                }
                              },
                            ),
                            const SizedBox(
                              width: kPadding56,
                            ),
                            WebMenuItem(
                              title: contact,
                              onPress: () {
                                ref.read(isActiveProvider.notifier).state = 2;
                              },
                              index: 2,
                              onHover: (bool value) {
                                if (value == true) {
                                  ref
                                      .read(webMenuItemHoverProvider.notifier)
                                      .state = 2;
                                } else {
                                  ref
                                      .read(webMenuItemHoverProvider.notifier)
                                      .state = 0;
                                }
                              },
                            ),
                            const SizedBox(
                              width: kPadding56,
                            ),
                            WebMenuItem(
                              title: about,
                              onPress: () {
                                ref.read(isActiveProvider.notifier).state = 3;
                              },
                              index: 3,
                              onHover: (bool value) {
                                if (value == true) {
                                  ref
                                      .read(webMenuItemHoverProvider.notifier)
                                      .state = 3;
                                } else {
                                  ref
                                      .read(webMenuItemHoverProvider.notifier)
                                      .state = 0;
                                }
                              },
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
                          ],
                        );
                      },
                    ),
                  ),
                ],
              )),
            ),
          ],
        ));
  }
}
