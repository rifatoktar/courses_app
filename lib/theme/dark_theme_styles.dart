import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      primarySwatch: Colors.red,
      primaryColor: isDarkTheme ? Colors.black : Colors.white,
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.beVietnamPro(
            color: isDarkTheme ? Colors.white : Color(0xff374957)),
        headlineSmall: GoogleFonts.beVietnamPro(
            color: isDarkTheme ? Colors.white : Color(0xff374957)),
        titleSmall: GoogleFonts.beVietnamPro(
            color: isDarkTheme
                ? Colors.white.withOpacity(.5)
                : Color(0xff374957).withOpacity(.5)),
      ),
      colorScheme: ColorScheme.dark(
          background: isDarkTheme ? Color(0xff1e1e1e) : Color(0xffE7E5E5),
          brightness: isDarkTheme ? Brightness.dark : Brightness.light),
      indicatorColor: isDarkTheme ? Color(0xff0E1D36) : Color(0xffCBDCF8),
      hintColor: isDarkTheme ? Color(0xff280C0B) : Color(0xffEECED3),
      highlightColor: isDarkTheme ? Color(0xff372901) : Color(0xffFCE192),
      hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0xff4285F4),
      focusColor: isDarkTheme
          ? Colors.white.withOpacity(.5)
          : Color(0xff374957).withOpacity(.5),
      disabledColor: Colors.grey,
      cardColor: isDarkTheme ? Colors.white : Color(0xFF374957),
      canvasColor: isDarkTheme ? Color(0xff404040) : Colors.white,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
      ),
      textSelectionTheme: TextSelectionThemeData(
          selectionColor: isDarkTheme ? Colors.white : Colors.black),
    );
  }
}
