import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/core/ApplicationProvider/app_provider.dart';
import 'package:to_do/modules/settings/selected_option.dart';
import 'package:to_do/modules/settings/unselected_option.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeSheet extends StatelessWidget {
  const ThemeSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    var theme = Theme.of(context);
    var appprovider = Provider.of<AppProvider>(context);
    return Container(
      color: theme.colorScheme.secondary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30,),
          GestureDetector(
              onTap: () {
                appprovider.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: appprovider.isDark()
                  ? SelectedOption(option: locale!.dark)
                  : UnselectedOption(option: locale!.dark)),
          GestureDetector(
              onTap: () {
                appprovider.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: appprovider.isDark()
                  ? UnselectedOption(option: locale!.light)
                  : SelectedOption(option: locale!.light))
        ],
      ),
    );
  }
}
