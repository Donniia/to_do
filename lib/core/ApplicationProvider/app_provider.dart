import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{
  ThemeMode currentTheme = ThemeMode.dark;
  String currentLanguage = "en";

  changeTheme(ThemeMode newTheme){
    if(currentTheme == newTheme) return;
    currentTheme=newTheme;

    notifyListeners();
  }

  changelanguage(String newLanguage){
    if(currentLanguage==newLanguage) return;
    currentLanguage=newLanguage;

    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  bool isEnglish(){
    return currentLanguage=="en";
  }
}