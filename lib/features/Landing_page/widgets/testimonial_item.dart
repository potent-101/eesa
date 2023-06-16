import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TestimonialItem extends ConsumerWidget {
  const TestimonialItem({
    required this.avatarPath,
    required this.content,
    required this.name,
    this.rating = 0,
    this.label = 'Student',
    super.key,
  });

  final String label;
  final double rating;
  final String content;
  final String name;
  final String avatarPath;

  final SizedBox _space = const SizedBox(
    height: 18,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(
          kPadding20,
        ),
        decoration: BoxDecoration(
          color: kGrey5,
          borderRadius: BorderRadius.circular(
            kPadding16,
          ),
          border: Border.all(
            color: kGrey7,
            width: 2,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: kSuccess.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(kPadding16),
                  ),
                  child: Text(
                    label,
                    style: Theme.of(context)
                        .textTheme
                        .captionLargeSemibold
                        .copyWith(color: kSuccess),
                  ),
                ),
                const Spacer(),
              ],
            ),
            _space,
            Text(
              content,
              style: Theme.of(context).textTheme.bodyLargeMedium,
            ),
            _space,
            Row(
              children: [
                CircleAvatar(
                  radius: kPadding28,
                  child: Image.asset(
                    avatarPath,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: Text(
                        name,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLargeSemibold
                            .copyWith(
                              color: kTitleWhite,
                            ),
                      ),
                    ),
                    const SizedBox(
                      height: kPadding4,
                    ),
                    RatingBar(
                      itemSize: kPadding20,
                      initialRating: 3,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      ratingWidget: RatingWidget(
                        full: const Icon(
                          Icons.star_rounded,
                          color: kRatingYellow,
                        ),
                        half: const Icon(
                          Icons.star_half_rounded,
                          color: kRatingYellow,
                        ),
                        empty: const Icon(
                          Icons.star_border_rounded,
                          color: kInputTextColor,
                        ),
                      ),
                      itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                      onRatingUpdate: (double value) {},
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
