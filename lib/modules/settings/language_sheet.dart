import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/core/ApplicationProvider/app_provider.dart';
import 'package:to_do/modules/settings/selected_option.dart';
import 'package:to_do/modules/settings/unselected_option.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageSheet extends StatelessWidget {
  const LanguageSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    var theme = Theme.of(context);
    return Container(
      color: theme.colorScheme.secondary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
              onTap: () {
                appProvider.changelanguage("en");
                Navigator.pop(context);
              },
              child: appProvider.isEnglish()
                  ? SelectedOption(option: locale!.english)
                  : UnselectedOption(option: locale!.english)),
          GestureDetector(
              onTap: () {
                appProvider.changelanguage("ar");
                Navigator.pop(context);
              },
              child: appProvider.isEnglish()
                  ? UnselectedOption(option: locale!.arabic)
                  : SelectedOption(option: locale!.arabic))
        ],
      ),
    );
  }
}
