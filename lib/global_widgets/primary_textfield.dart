import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';

class PrimaryTextFormField extends StatefulWidget {
  const PrimaryTextFormField(
      {super.key,
      required this.hintText,
      this.lableText,
      required this.errorText,
      this.maxLines = 1,
      this.minLines = 1,
      this.expands = false,
      this.textInputType,
      this.contentPadding =
          const EdgeInsets.fromLTRB(kPadding16, 0, kPadding16, kPadding12)});

  final String? lableText;
  final String hintText;
  final String errorText;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final TextInputType? textInputType;
  final EdgeInsetsGeometry? contentPadding;

  @override
  State<PrimaryTextFormField> createState() => _PrimaryTextFormFieldState();
}

class _PrimaryTextFormFieldState extends State<PrimaryTextFormField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.lableText != null)
            Text(
              widget.lableText!,
              style: Theme.of(context).textTheme.bodySmallSemibold,
            ),
          if (widget.lableText != null)
            const SizedBox(
              height: 6,
            ),
          TextFormField(
            cursorColor: kButtonColor,
            maxLines: widget.maxLines,
            minLines: widget.minLines,
            keyboardType: widget.textInputType,
            expands: widget.expands,
            textAlignVertical: TextAlignVertical.center,
            style: Theme.of(context).textTheme.bodyLargeRegular.copyWith(
                  color: kInputColor,
                  height: 1.5,
                ),
            decoration: InputDecoration(
              hintText: widget.hintText,
              contentPadding: widget.contentPadding,
              hintStyle: Theme.of(context).textTheme.bodyLargeRegular.copyWith(
                    color: kInputTextColor,
                    height: 0,
                  ),
              //errorText: widget.errorText,
              fillColor: kGrey4,
              filled: true,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: kGrey7),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: kButtonColor),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
