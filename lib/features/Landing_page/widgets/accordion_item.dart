import 'dart:math' as math;

import 'package:eesa/features/Landing_page/widgets/providers/accordion_controller_provider.dart';
import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'controllers/accordion_item_controller.dart';

class AccordionItem extends ConsumerStatefulWidget {
  AccordionItem({
    required this.question,
    required this.answer,
    super.key,
  });

  final String question;
  final String answer;
  late final int _index;

  void itemIndex({required int index}) {
    _index = index;
  }

  @override
  ConsumerState<AccordionItem> createState() => _AccordionItemState();
}

class _AccordionItemState extends ConsumerState<AccordionItem>
    with SingleTickerProviderStateMixin {
  final _accordionItemControllerProvider =
      NotifierProvider<AccordionItemController, bool>(
          AccordionItemController.new);

  late AnimationController _controller;
  late Animation<double> _animation;
  AnimationStatus animationStatus = AnimationStatus.forward;
  bool toggle = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(_accordionItemControllerProvider);
    final accordionItemIndex = ref.watch(accordionControllerProvider);

    if (toggle == true && accordionItemIndex == widget._index) {
      _controller.forward();
      _animation.addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            animationStatus = status;
          }
        },
      );
    } else {
      if (animationStatus == AnimationStatus.completed) {
        _controller.reverse();
        toggle = false;
      }
    }

    return Container(
      constraints: const BoxConstraints(
        maxWidth: 680,
      ),
      padding: const EdgeInsets.fromLTRB(
        kPadding32,
        kPadding24,
        kPadding32,
        kPadding24,
      ),
      decoration: BoxDecoration(
        color: kGrey2,
        borderRadius: BorderRadius.circular(
          kPadding16,
        ),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              toggle = !toggle;
              ref.read(_accordionItemControllerProvider.notifier).toggle();
              ref
                  .read(accordionControllerProvider.notifier)
                  .update(widget._index);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    widget.question,
                    style: Theme.of(context).textTheme.heading5LargeSemibold,
                  ),
                ),
                const SizedBox(
                  width: kPadding8,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Transform.rotate(
                          angle: 0.5 * math.pi,
                          child: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: kPadding16,
                            color: kInputTextColor,
                          )).animate(target: toggle ? 1 : 0).rotate(
                        duration: 200.ms,
                        curve: Curves.easeIn,
                        begin: 0,
                        end: 0.5,
                      ),
                ),
              ],
            ),
          ),
          SizeTransition(
            sizeFactor: _animation,
            axis: Axis.vertical,
            axisAlignment: -1,
            child: FadeTransition(
              opacity: _animation,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: kPadding20,
                  right: kPadding16,
                ),
                child: Text(
                  widget.answer,
                  style: Theme.of(context).textTheme.bodyLargeMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
