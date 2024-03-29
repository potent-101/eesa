import 'package:eesa/features/Landing_page/constants.dart';
import 'package:eesa/global_constants/kColorConstants.dart';
import 'package:flutter/material.dart';

var essaTheme = ThemeData(
  fontFamily: 'Inter',
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: fontSize61,
      fontWeight: FontWeight.w800,
      color: kTitleWhite,
    ),
  ),
);

extension CustomStyles on TextTheme {
  TextStyle get heading5MediumLarge {
    return const TextStyle(
      color: kTextColor,
      height: 1.75,
      fontSize: fontSize20,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get heading5Large {
    return const TextStyle(
      color: kTitleWhite,
      fontSize: fontSize20,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get heading5LargeSemibold {
    return const TextStyle(
      color: kTitleWhite,
      fontSize: fontSize20,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get heading4Largebold {
    return const TextStyle(
      color: kTitleWhite,
      fontSize: fontSize25,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get heading2large {
    return const TextStyle(
      color: kTitleWhite,
      fontSize: fontSize39,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get heading3large {
    return const TextStyle(
      color: kTitleWhite,
      fontSize: fontSize31,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle get bodyLargeMedium {
    return const TextStyle(
      color: kTextColor,
      height: 1.5,
      fontSize: fontSize16,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get bodyLargeRegular {
    return const TextStyle(
      color: kTextColor,
      height: 2,
      fontSize: fontSize16,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get bodyLargeSemibold {
    return const TextStyle(
      color: kTextColor,
      fontSize: fontSize16,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get bodySmallSemibold {
    return const TextStyle(
      color: kTitleWhite,
      fontSize: fontSize14,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get bodySmallMedium {
    return const TextStyle(
      color: kTextColor,
      fontSize: fontSize14,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get captionLargeSemibold {
    return const TextStyle(
      color: kTextColor,
      fontSize: fontSize12,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle get footerSemibold {
    return const TextStyle(
      color: kFooterColor,
      fontSize: fontSize10,
      fontWeight: FontWeight.w600,
    );
  }
}
