import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// [TextTheme] base from Google fonts
final _textThemeBase = GoogleFonts.robotoTextTheme();

/// App [TextTheme] for light and dark themes
// Note:
// Roboto: Thin 100 | Light 300 | Regular 400 | Medium 500 | Bold 700
final TextTheme textTheme = TextTheme(
  headline1: _textThemeBase.headline1!.copyWith(
      // fontSize: 48,
      // fontWeight: FontWeight.w300,
      // letterSpacing: -1.5,
      ),
  headline2: _textThemeBase.headline2!.copyWith(
      // fontSize: 39,
      // fontWeight: FontWeight.w300,
      // letterSpacing: -.5,
      ),
  headline3: _textThemeBase.headline3!.copyWith(
      // fontSize: 31,
      // fontWeight: FontWeight.w300,
      ),
  headline4: _textThemeBase.headline4!.copyWith(
      // fontSize: 25,
      // fontWeight: FontWeight.w400,
      // letterSpacing: .25,
      ),
  headline5: _textThemeBase.headline5!.copyWith(
      // fontSize: 20,
      // fontWeight: FontWeight.w400,
      ),
  headline6: _textThemeBase.headline6!.copyWith(
      // fontSize: 16,
      // fontWeight: FontWeight.w500,
      // letterSpacing: .25,
      // height: 1.2,
      ),
  subtitle1: _textThemeBase.subtitle1!.copyWith(
      // fontSize: 16,
      // fontWeight: FontWeight.w400,
      // letterSpacing: .25,
      ),
  subtitle2: _textThemeBase.subtitle2!.copyWith(
      // fontSize: 14,
      // fontWeight: FontWeight.w500,
      // letterSpacing: .20,
      ),
  bodyText1: _textThemeBase.bodyText1!.copyWith(
      // fontSize: 16,
      // fontWeight: FontWeight.w400,
      // letterSpacing: .3,
      // height: 1.5,
      ),
  bodyText2: _textThemeBase.bodyText2!.copyWith(
      // fontSize: 13,
      // fontWeight: FontWeight.w400,
      // letterSpacing: .1,
      ),
  button: _textThemeBase.button!.copyWith(
      // fontSize: 14,
      // fontWeight: FontWeight.w500,
      // letterSpacing: .75,
      ),
  caption: _textThemeBase.caption!.copyWith(
      // fontSize: 12,
      // fontWeight: FontWeight.w400,
      // letterSpacing: .2,
      ),
  overline: _textThemeBase.overline!.copyWith(
      // fontSize: 10,
      // fontWeight: FontWeight.w400,
      // letterSpacing: .75,
      ),
);
