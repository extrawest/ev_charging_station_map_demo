import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color redLight = Color(0xFFE44125);
const Color blackShade = Color(0xFF222222);
const Color cherryRed = Color(0xffe8001d);
const Color greyShadeLight = Color(0xFFE5E5E5);
const Color greyLight = Color(0x0c000000);
const Color white = Color(0xffffffff);
const Color greenAccent = Color(0xffC0D758);
const Color greyIcon = Color(0xff89919A);
const Color inputTextColor = Color(0xffB5BDC8);

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
  colorScheme: ColorScheme.dark(
    primary: Colors.grey.shade200,
    background: blackShade,
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
  floatingActionButtonTheme: const FloatingActionButtonThemeData(foregroundColor: Colors.black),
  dividerColor: Colors.black12,
  fontFamily: GoogleFonts.roboto().fontFamily,
  inputDecorationTheme: const InputDecorationTheme(
    border: InputBorder.none,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      gapPadding: 2,
      borderSide: BorderSide(color: greenAccent, width: 2),
    ),
    labelStyle: TextStyle(color: inputTextColor),
  ),
  textTheme: const TextTheme(
    displayMedium: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(fontSize: 22.0, fontStyle: FontStyle.italic),
    titleSmall: TextStyle(fontSize: 18.0, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
    bodySmall: TextStyle(fontSize: 14.0),
  ),
);

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: Colors.white,
  primarySwatch: Colors.blue,
  colorScheme: const ColorScheme.light(
    primary: Colors.black54,
    background: greyShadeLight,
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
  floatingActionButtonTheme: const FloatingActionButtonThemeData(foregroundColor: Colors.white),
  dividerColor: Colors.white54,
  fontFamily: GoogleFonts.roboto().fontFamily,
  inputDecorationTheme: const InputDecorationTheme(
    border: InputBorder.none,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      gapPadding: 2,
      borderSide: BorderSide(color: greenAccent, width: 2),
    ),
    labelStyle: TextStyle(color: inputTextColor),
  ),
  textTheme: const TextTheme(
    displayMedium: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(fontSize: 22.0, fontStyle: FontStyle.italic),
    titleSmall: TextStyle(fontSize: 18.0, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
    bodySmall: TextStyle(fontSize: 14.0),
  ),
);
