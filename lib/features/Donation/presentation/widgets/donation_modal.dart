import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/global_widgets/amount_container.dart';
import 'package:eesa/global_widgets/chain_button.dart';
import 'package:eesa/global_widgets/primary_button.dart';
import 'package:eesa/global_widgets/primary_textfield.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../global_widgets/form_modal_background.dart';
import '../../../Landing_page/constants.dart';

class DonationModal extends StatefulWidget {
  const DonationModal({super.key});

  @override
  State<DonationModal> createState() => _DonationModalState();
}

class _DonationModalState extends State<DonationModal> {
  SizedBox space = const SizedBox(
    height: kPadding24,
  );
  SizedBox chainBSpace = const SizedBox(
    width: kPadding16,
  );
  List<Widget> chainButtons() {
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return FormModalBackground(
      padding: const EdgeInsets.fromLTRB(
        kPadding24,
        kPadding24,
        kPadding24,
        kPadding24,
      ),
      maxWidth: 660,
      child: Column(
        children: [
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds) {
              return const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.05, 1],
                  colors: [kOrangeColor, kPinkColor]).createShader(
                Rect.fromLTWH(0, 0, bounds.width, bounds.height),
              );
            },
            child: Text(
              makeADonation,
              style: Theme.of(context).textTheme.heading2large,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 448),
            child: const Text(
              donationSubtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: kTextColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          Form(
            child: Column(
              children: [
                // const PrimaryTextFormField(
                //   hintText: 'e.g you@myemail.com',
                //   lableText: 'Email',
                //   errorText: '',
                // ),
                // space,
                const PrimaryTextFormField(
                  hintText: 'mpesa number',
                  lableText: 'Phone',
                  errorText: '',
                ),
                space,
                AmountContainer(
                  labelText: 'Amount',
                  child: Column(
                    children: [
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Choose Amount',
                              style:
                                  Theme.of(context).textTheme.bodySmallSemibold,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                ChainButton(
                                  buttonText: 'Ksh 50',
                                  index: 0,
                                ),
                                chainBSpace,
                                ChainButton(
                                  buttonText: 'Ksh 100',
                                  index: 1,
                                ),
                                chainBSpace,
                                ChainButton(
                                  buttonText: 'Ksh 200',
                                  index: 2,
                                ),
                                chainBSpace,
                                ChainButton(
                                  buttonText: 'Ksh 500',
                                  index: 3,
                                ),
                                chainBSpace,
                                ChainButton(
                                  buttonText: 'Ksh 1k',
                                  index: 4,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: kPadding32,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Container(
                              height: 1,
                              color: kGrey7,
                            ),
                          ),
                          const SizedBox(
                            width: kPadding8,
                          ),
                          Text(
                            'OR',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLargeRegular
                                .copyWith(
                                  color: kGrey7,
                                  height: 0,
                                ),
                          ),
                          const SizedBox(
                            width: kPadding8,
                          ),
                          Flexible(
                            child: Container(
                              height: 1,
                              color: kGrey7,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: kPadding32,
                      ),
                      const PrimaryTextFormField(
                        hintText: 'amount',
                        lableText: 'Enter Amount',
                        errorText: '',
                      ),
                    ],
                  ),
                ),
                space,
                AmountContainer(
                  labelText: 'Beneficiary',
                  child: Row(
                    children: [
                      Flexible(
                        child: ChainButton(
                          buttonText: 'Association',
                          listen: false,
                        ),
                      ),
                      const SizedBox(
                        width: kPadding24,
                      ),
                      Text(
                        'OR',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLargeRegular
                            .copyWith(
                              color: kGrey7,
                              height: 0,
                            ),
                      ),
                      const SizedBox(
                        width: kPadding24,
                      ),
                      const Flexible(
                        child: PrimaryTextFormField(
                          hintText: 'Enter Code',
                          errorText: '',
                        ),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(
                //   height: kPadding32,
                // ),
                // Row(
                //   children: [
                //     Checkbox(
                //       value: true,
                //       onChanged: (value) {},
                //     ),
                //     const SizedBox(
                //       width: kPadding4,
                //     ),
                //     Text(
                //       reminder,
                //       style: Theme.of(context).textTheme.bodySmallMedium,
                //     ),
                //   ],
                // ),
                const SizedBox(
                  height: kPadding32,
                ),
                PrimaryButton(
                  height: kPadding44,
                  title: submitDonation,
                  trailIconSpace: kPadding8,
                  trailingIcon: SvgPicture.asset(
                    pathToHearts,
                    color: kTitleWhite,
                  ),
                  animateTrailingIcon: false,
                  onPress: () {},
                ),
                const SizedBox(
                  height: kPadding16,
                ),
                Text(
                  noRefund,
                  style: Theme.of(context).textTheme.footerSemibold.copyWith(
                        color: kInputTextColor,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    )
        .animate()
        .fade(duration: 450.ms, curve: Curves.easeInOut)
        .moveY(begin: 24, end: 0);
  }
}
