import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color redLight = Color(0xFFE44125);
const Color blackShade = Color(0xFF222222);
const Color cherryRed = Color(0xffe8001d);
const Color greyShadeLight = Color(0xFFE5E5E5);
const Color greyLight = Color(0x0c000000);
const Color white = Color(0xffffffff);
const Color greenAccent = Color(0xffC0D758);
const Color greenDark = Color(0xff5F5D17);
const Color greenTagColor = Color(0xff739629);
const Color greyIcon = Color(0xff89919A);
const Color inputTextColor = Color(0xffB5BDC8);
const Color greyLabelColor = Color(0xff696E6F);
const Color redColor = Color(0xffED5C3C);
const Color yellowColor = Color(0xffFFD540);
const Color greyBorderColor = Color(0xffC8D1DD);
const Color labelTextColor = Color(0xff383936);
const Color whiteColor1 = Color(0xffFFFFFD);
const Color whiteColor2 = Color(0xffFBFFE9);

class TextStyles {
  static const notifierTextLabel = TextStyle(
    fontSize: 26,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w300,
  );
}

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  primaryColor: Colors.black,
  primarySwatch: Colors.deepPurple,

  scaffoldBackgroundColor: white,
  colorScheme: ColorScheme.dark(
    primary: Colors.grey.shade200,
    background: blackShade,
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(greenAccent),
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 16,
          color: white,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(greenAccent),
      minimumSize: MaterialStateProperty.all(const Size.fromHeight(50)),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 16,
          color: white,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  ),
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(foregroundColor: Colors.black),
  dividerColor: Colors.black12,
  fontFamily: GoogleFonts.roboto().fontFamily,
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: greyIcon,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: greyBorderColor, // Change the border color as needed
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      gapPadding: 2,
      borderSide: BorderSide(color: greenAccent, width: 2),
    ),
    hintStyle: TextStyle(
      color: inputTextColor,
      height: 1.2,
      fontSize: 14,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    labelStyle: const TextStyle(color: inputTextColor),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.bold,
      color: greenDark,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    displayMedium: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    titleMedium: const TextStyle(fontSize: 22.0, fontStyle: FontStyle.italic),
    titleSmall: const TextStyle(
      fontSize: 18.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontSize: 16.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    labelMedium: const TextStyle(
      fontSize: 12.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300,
      color: greyLabelColor,
    ),
    labelSmall: const TextStyle(
      fontSize: 11.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300,
      color: labelTextColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
      fontFamily: GoogleFonts.inter().fontFamily,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.inter().fontFamily,
      color: greyLabelColor,
    ),
  ),
);

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: Colors.white,
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: white,
  colorScheme: const ColorScheme.light(
    primary: Colors.black54,
    background: greyShadeLight,
  ),
  // buttonTheme: ButtonThemeData(),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(greenAccent),
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 16,
          color: white,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(greenAccent),
      minimumSize: MaterialStateProperty.all(const Size.fromHeight(50)),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 16,
          color: white,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  ),
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(foregroundColor: Colors.white),
  dividerColor: Colors.white54,
  fontFamily: GoogleFonts.roboto().fontFamily,
  inputDecorationTheme: InputDecorationTheme(

    prefixIconColor: greyIcon,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: greyBorderColor, // Change the border color as needed
      ),
    ),

    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      gapPadding: 2,
      borderSide: BorderSide(color: greenAccent, width: 2),
    ),
    hintStyle: TextStyle(
      color: inputTextColor,
      height: 1.2,
      fontSize: 14,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    labelStyle: const TextStyle(color: inputTextColor),
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.bold,
      color: greenDark,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    displayMedium: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    titleMedium: const TextStyle(
      fontSize: 22.0,
    ),
    titleSmall: const TextStyle(
      fontSize: 18.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontSize: 16.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    labelMedium: const TextStyle(
      fontSize: 12.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300,
      color: greyLabelColor,
    ),
    labelSmall: const TextStyle(
      fontSize: 11.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300,
      color: labelTextColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
      fontFamily: GoogleFonts.inter().fontFamily,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.inter().fontFamily,
      color: greyLabelColor,
    ),
  ),
);
