import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/modules/settings/custom_option.dart';
import 'package:to_do/modules/settings/language_sheet.dart';
import 'package:to_do/modules/settings/theme_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../core/ApplicationProvider/app_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    var media = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var appprovider = Provider.of<AppProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          width: media.width,
          height: 200,
          color: theme.primaryColor,
          padding: const EdgeInsets.only(left: 52),
          child: Text(locale!.settings, style: theme.textTheme.titleLarge),
        ),
        GestureDetector(
            onTap: () {
              showModalLanguageSheet(context);
            },
            child: CustomOption(
                title: locale!.language,
                option: appprovider.isEnglish()
                    ? locale!.english
                    : locale!.arabic)),
        GestureDetector(
            onTap: () {
              showModalThemeSheet(context);
            },
            child: CustomOption(
                title: locale!.mode,
                option: appprovider.isDark() ? locale!.dark : locale!.light)),
      ],
    );
  }
}

showModalLanguageSheet(BuildContext context) {
  showModalBottomSheet(
      context: (context), builder: (context) => LanguageSheet());
}

showModalThemeSheet(BuildContext context) {
  showModalBottomSheet(context: (context), builder: (context) => ThemeSheet());
}
