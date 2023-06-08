import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EesaOfferItem extends ConsumerWidget {
  EesaOfferItem({
    required this.onTap,
    required this.pathToIcon,
    required this.offerTitle,
    required this.offerContent,
    super.key,
  });

  final String pathToIcon;
  final String offerTitle;
  final String offerContent;
  final VoidCallback onTap;

  final _eesaItemProvider = StateProvider<bool>((ref) {
    return false;
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isHovered = ref.watch(_eesaItemProvider);
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        onHover: (value) {
          ref.read(_eesaItemProvider.notifier).state = value;
        },
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: isHovered ? kGrey3 : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: kPadding32,
              ),
              Container(
                height: 116,
                width: 116,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(93),
                  color: kGrey4,
                ),
                child: SvgPicture.asset(pathToIcon),
              ),
              const SizedBox(
                height: kPadding40,
              ),
              Text(
                offerTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.heading5Large,
              ),
              Padding(
                padding: const EdgeInsets.all(kPadding16),
                child: Text(
                  offerContent,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLargeMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
