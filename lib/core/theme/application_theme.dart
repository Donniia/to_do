import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
static bool isDark = true;
  static ThemeData lightTheme = ThemeData(
      primaryColor: const Color(0xff5D9CEC),
      colorScheme: ColorScheme.fromSeed(
        primary: const Color(0xff5D9CEC),
        seedColor: const Color(0xff5D9CEC),
        secondary: Colors.white,
        onSecondary: Colors.black.withOpacity(0.5)

      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: Color(0xff5D9CEC)),
        selectedItemColor: Color(0xff5D9CEC),
        unselectedIconTheme: IconThemeData(color: Color(0xffC8C9CB)),
        unselectedItemColor: Color(0xffC8C9CB),
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      scaffoldBackgroundColor: const Color(0xffDFECDB),
      appBarTheme: AppBarTheme(
          elevation: 0,
          toolbarHeight: 150,
          backgroundColor: const Color(0xff5D9CEC),
          titleTextStyle: GoogleFonts.poppins(
              fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white)),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.poppins(
              fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
          bodyLarge: GoogleFonts.poppins(
            fontSize: 18,
            color: const Color(0xff5D9CEC),
            fontWeight: FontWeight.w700,
          ),
          bodyMedium: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          bodySmall: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          )),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xff5D9CEC),
        elevation: 0,
      ),
  );
  static ThemeData DarkTheme = ThemeData(
    primaryColor: const Color(0xff5D9CEC),
    colorScheme: ColorScheme.fromSeed(
      primary: const Color(0xff5D9CEC),
      seedColor: const Color(0xff5D9CEC),
      secondary: const Color(0xff141922),
        onSecondary: Colors.white.withOpacity(0.5)
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff141922),
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(color: Color(0xff5D9CEC)),
      selectedItemColor: Color(0xff5D9CEC),
      unselectedIconTheme: IconThemeData(color: Color(0xffC8C9CB)),
      unselectedItemColor: Color(0xffC8C9CB),
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    scaffoldBackgroundColor: const Color(0xff060E1E),
    appBarTheme: AppBarTheme(
        elevation: 0,
        toolbarHeight: 150,
        backgroundColor: const Color(0xff5D9CEC),
        titleTextStyle: GoogleFonts.poppins(
            fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white)),
    textTheme: TextTheme(
        titleLarge: GoogleFonts.poppins(
            fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
        bodyLarge: GoogleFonts.poppins(
          fontSize: 18,
          color: const Color(0xff5D9CEC),
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: GoogleFonts.poppins(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        bodySmall: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        )),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xff5D9CEC),
      elevation: 0,
    ),
  );
}
