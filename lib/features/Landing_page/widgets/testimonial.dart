import 'package:eesa/features/Landing_page/widgets/testimonial_item.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart';

class Testimonials extends ConsumerWidget {
  const Testimonials({super.key});

  final SizedBox _space = const SizedBox(height: kPadding48);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kPadding88,
        vertical: kPadding48,
      ),
      child: Column(
        children: [
          Text(
            testimonial,
            style: Theme.of(context).textTheme.heading3large,
          ),
          _space,
          const Row(
            children: [
              TestimonialItem(
                label: congressEngineering,
                avatarPath: pathToHands,
                content: teamWorkContent,
                name: carenOdero,
              ),
              SizedBox(
                width: kPadding24,
              ),
              TestimonialItem(
                label: viceChairpersonEESA,
                avatarPath: pathToHands,
                content: teamWorkContent,
                name: vivianMaina,
              ),
              SizedBox(
                width: kPadding24,
              ),
              TestimonialItem(
                avatarPath: pathToHands,
                content: teamWorkContent,
                name: brianWekesa,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
