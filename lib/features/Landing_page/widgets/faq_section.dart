import 'package:eesa/features/Landing_page/widgets/accordion.dart';
import 'package:eesa/features/Landing_page/widgets/accordion_item.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../global_constants/kColorConstants.dart';
import '../../../global_constants/kPaddingConstants.dart';
import '../../../global_widgets/primary_button.dart';
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
        kPadding84,
      ),
      decoration: const BoxDecoration(color: kGrey1),
      child: Column(
        children: [
          Text(
            frequentlyAskedQuestions,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.heading2large,
          ),
          const SizedBox(
            height: kPadding44,
          ),
          Accordion(
            featureSpacing: kPadding20,
            children: [
              AccordionItem(
                question: questionOne,
                answer: answerOne,
              ),
              AccordionItem(
                question: questionTwo,
                answer: answerTwo,
              ),
              AccordionItem(
                question: questionThree,
                answer: answerThree,
              ),
              AccordionItem(
                question: questionFour,
                answer: answerFour,
              ),
            ],
          ),
          const SizedBox(
            height: kPadding64,
          ),
          Column(
            children: [
              Text(youDidntGetWhatYouWereLookingFor,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.heading4Largebold),
              const SizedBox(
                height: kPadding16,
              ),
              Text(
                sendUsAnEmail,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLargeMedium,
              ),
              const SizedBox(
                height: kPadding32,
              ),
              PrimaryButton(
                radius: 48,
                height: 44,
                width: 171,
                title: contactUs,
                titleStyle: Theme.of(context).textTheme.bodyLargeSemibold,
                onPress: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
