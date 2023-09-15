import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/global_widgets/primary_button.dart';
import 'package:eesa/global_widgets/primary_textfield.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../global_widgets/form_modal_background.dart';
import '../../Landing_page/constants.dart';

class ContactModal extends StatefulWidget {
  const ContactModal({super.key});

  @override
  State<ContactModal> createState() => _ContactModalState();
}

class _ContactModalState extends State<ContactModal> {
  SizedBox space = const SizedBox(
    height: kPadding24,
  );
  @override
  Widget build(BuildContext context) {
    return FormModalBackground(
      padding: const EdgeInsets.fromLTRB(
        kPadding24,
        kPadding24,
        kPadding24,
        kPadding32,
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
              sendUsAMessage,
              style: Theme.of(context).textTheme.heading2large,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            contactSubtitle,
            style: TextStyle(
              fontSize: 20,
              color: kTextColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          Form(
            child: Column(
              children: [
                const Row(
                  children: [
                    Flexible(
                      child: PrimaryTextFormField(
                        hintText: 'First name',
                        lableText: 'First name',
                        errorText: '',
                      ),
                    ),
                    SizedBox(
                      width: kPadding28,
                    ),
                    Flexible(
                      child: PrimaryTextFormField(
                        hintText: 'Last name',
                        lableText: 'Last name',
                        errorText: '',
                      ),
                    ),
                  ],
                ),
                space,
                const PrimaryTextFormField(
                  hintText: 'e.g you@myemail.com',
                  lableText: 'Email',
                  errorText: '',
                ),
                space,
                const PrimaryTextFormField(
                  hintText: 'e.g B13/03320/19',
                  lableText: 'Reg No',
                  errorText: '',
                ),
                space,
                const PrimaryTextFormField(
                  minLines: 5,
                  maxLines: 20,
                  hintText: 'Write your message here',
                  lableText: 'Message',
                  errorText: '',
                ),
                const SizedBox(
                  height: kPadding32,
                ),
                PrimaryButton(
                  height: kPadding44,
                  title: sendMessage,
                  trailIconSpace: kPadding8,
                  trailingIcon: SvgPicture.asset(
                    pathToSendIcon,
                  ),
                  animateTrailingIcon: false,
                  onPress: () {},
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
