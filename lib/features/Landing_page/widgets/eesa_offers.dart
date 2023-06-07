import 'package:eesa/features/Landing_page/constants.dart';
import 'package:eesa/features/Landing_page/widgets/eesa_offer_item.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EssaOffers extends ConsumerWidget {
  const EssaOffers({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const spacing = SizedBox(
      width: kPadding40,
    );
    return Padding(
      padding: const EdgeInsets.only(left: kPadding24, right: kPadding24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 25,
          ),
          Text(
            offerTitle,
            style: Theme.of(context).textTheme.heading2large,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 64,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EesaOfferItem(
                  pathToIcon: pathToStoreIcon,
                  offerTitle: store,
                  offerContent: storeContent,
                  onTap: () {},
                ),
                spacing,
                EesaOfferItem(
                  pathToIcon: pathToCorsesIcon,
                  offerTitle: courses,
                  offerContent: coursesContent,
                  onTap: () {},
                ),
                spacing,
                EesaOfferItem(
                  pathToIcon: pathToProjectsIcon,
                  offerTitle: projects,
                  offerContent: projectsContent,
                  onTap: () {},
                ),
                spacing,
                EesaOfferItem(
                  pathToIcon: pathToBookingIcon,
                  offerTitle: booking,
                  offerContent: bookingContent,
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
