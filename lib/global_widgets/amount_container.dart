import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';

class AmountContainer extends StatelessWidget {
  const AmountContainer({
    required this.labelText,
    required this.child,
    super.key,
  });

  final String labelText;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: Theme.of(context).textTheme.bodySmallSemibold,
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            padding: const EdgeInsets.all(
              kPadding24,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: kGrey7,
              ),
              borderRadius: BorderRadius.circular(
                kPadding12,
              ),
            ),
            child: child,
          )
        ],
      ),
    );
  }
}
