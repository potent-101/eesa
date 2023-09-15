import 'package:flutter/material.dart';

import '../global_constants/kColorConstants.dart';
import '../global_constants/kPaddingConstants.dart';

class FormModalBackground extends StatelessWidget {
  const FormModalBackground({
    super.key,
    required this.child,
    required this.padding,
    required this.maxWidth,
  });

  final double maxWidth;
  final EdgeInsets padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          kPadding8,
          kPadding64,
          kPadding8,
          kPadding64,
        ),
        child: Column(
          children: [
            Container(
              padding: padding,
              decoration: BoxDecoration(
                color: kGrey3,
                borderRadius: BorderRadius.circular(
                  kPadding16,
                ),
                boxShadow: [
                  BoxShadow(
                    color: kGrey1.withOpacity(
                      0.25,
                    ),
                    offset: const Offset(4, 4),
                    blurRadius: 48,
                  ),
                ],
              ),
              constraints: BoxConstraints(
                maxWidth: maxWidth,
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
