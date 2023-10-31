import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

mixin AppTextStyle {
  // heading1 Text Style
  static TextStyle heading1 = GoogleFonts.poppins(
    fontSize: 28,
    fontWeight: FontWeight.w600, // semi bold
    height: 1.5, // 42px
  );
  // heading2 Text Style
  static TextStyle heading2 = GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeight.w600, // semi bold
    height: 1.5, // 33px
  );
  // heading3 Text Style
  static TextStyle heading3 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600, // semi bold
    height: 1.5, // 24px
  );
  // heading4 Text Style
  static TextStyle heading4 = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w600, // semi bold
    height: 1.5, // 21px
  );
  // heading5 Text Style
  static TextStyle heading5 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w500, // medium
    height: 1.5, // 24px
  );
  // bodyText1 Text Style
  static TextStyle bodyText1 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w400, // regular
    height: 1.5, // 24px
  );
  // bodyText2 Text Style
  static TextStyle bodyText2 = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400, // regular
    height: 1.5, // 21px
  );
  // bodyText3 Text Style
  static TextStyle bodyText3 = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w600, // semi bold
    height: 1.5, // 18px
  );
  // titleLarge Text Style
  static TextStyle titleLarge = GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.w600, // semi bold
    height: 1.5, // 48px
  );
  // titleMedium Text Style
  static TextStyle titleMedium = GoogleFonts.poppins(
    fontSize: 26,
    fontWeight: FontWeight.w400, // regular
    height: 1.5, // 18px
  );
  // titleSmall Text Style
  static TextStyle titleSmall = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w400, // semi bold
    height: 1.5, // 18px
  );
}
