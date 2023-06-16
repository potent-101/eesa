import 'package:accordion/accordion.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../global_constants/kColorConstants.dart';
import '../../../global_constants/kPaddingConstants.dart';
import '../constants.dart';

class FAQSection extends ConsumerWidget {
  const FAQSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        kPadding84,
        kPadding88,
        kPadding84,
        kPadding128,
      ),
      decoration: const BoxDecoration(color: kGrey1),
      child: Column(
        children: [
          Text(
            support,
            style: Theme.of(context).textTheme.heading2large,
          ),
          const SizedBox(
            height: kPadding44,
          ),
          Accordion(
            scaleWhenAnimating: false,
            openAndCloseAnimation: false,
            children: [
              AccordionSection(
                header: const _HeaderWidget(question: questionOne),
                content: const _ContentWidget(content: answerOne),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({
    required this.question,
  });

  final String question;

  @override
  Widget build(BuildContext context) {
    return Text(
      question,
      style: Theme.of(context).textTheme.heading5LargeSemibold,
    );
  }
}

class _ContentWidget extends StatelessWidget {
  const _ContentWidget({
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: Theme.of(context).textTheme.bodyLargeMedium,
    );
  }
}
