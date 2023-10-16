import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/core/ApplicationProvider/app_provider.dart';
import 'package:to_do/core/theme/application_theme.dart';
import 'package:to_do/home_layout.dart';
import 'package:to_do/modules/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChangeNotifierProvider(
    create: (context) =>AppProvider(),
        child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);

    return MaterialApp(
      title: 'Localizations Sample App',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.DarkTheme,
      themeMode: appProvider.currentTheme,
      locale: Locale(appProvider.currentLanguage),
      initialRoute: SplashScreen.routName,
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routName: (context) => SplashScreen(),
        Home.routeName: (context) => Home(),
      },
    );
  }
}
