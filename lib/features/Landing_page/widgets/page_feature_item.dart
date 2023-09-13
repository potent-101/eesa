import 'package:eesa/global_constants/kPaddingConstants.dart';
import 'package:eesa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageFeatureItem extends ConsumerWidget {
  const PageFeatureItem({
    this.imageWidth,
    this.imageHeight,
    this.padding = const EdgeInsets.all(0),
    this.imageFirst = true,
    this.itemTitle = '',
    this.itemContent = '',
    this.pathToImage,
    this.contentStyle,
    this.titleStyle,
    super.key,
  });

  final bool imageFirst;
  final String itemTitle;
  final String itemContent;
  final String? pathToImage;
  final double? imageWidth;
  final double? imageHeight;
  final TextStyle? titleStyle;
  final TextStyle? contentStyle;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget firstItem = Padding(
      padding: padding,
      child: SizedBox(
        width: imageWidth,
        height: imageHeight,
        child: pathToImage == null ? null : Image.asset(pathToImage!),
      ),
    );
    Widget secondItem = Expanded(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: pathToImage == null
              ? const EdgeInsets.all(0)
              : const EdgeInsets.all(10),
          child: Text(
            itemTitle,
            style: titleStyle ?? Theme.of(context).textTheme.heading3large,
          ),
        ),
        SizedBox(
          height: pathToImage == null ? kPadding16 : kPadding8,
        ),
        Padding(
          padding: pathToImage == null
              ? const EdgeInsets.all(0)
              : const EdgeInsets.all(10),
          child: Text(
            itemContent,
            style:
                contentStyle ?? Theme.of(context).textTheme.heading5MediumLarge,
          ),
        ),
      ]),
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: imageFirst
          ? [
              firstItem,
              if (pathToImage != null)
                const SizedBox(
                  width: kPadding64,
                ),
              secondItem,
            ]
          : [
              secondItem,
              const SizedBox(
                width: kPadding64,
              ),
              firstItem,
            ],
    );
  }
}
