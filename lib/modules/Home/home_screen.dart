import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:to_do/modules/Home/task_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var locale = AppLocalizations.of(context);
    return Column(
      children: [
        Stack(
          alignment:const Alignment(0,1.5),
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: media.width,
              height: 250,
              color: theme.primaryColor,
              padding: const EdgeInsets.only(left: 52),
              child: Text(locale!.title,style: theme.textTheme.titleLarge),
            ),
            CalendarTimeline(
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(
                  days: 365
              )),
              onDateSelected: (date) => print(date),
              leftMargin: 20,
              monthColor: theme.colorScheme.onSecondary,
              dayColor: theme.colorScheme.onSecondary,
              activeDayColor: theme.primaryColor,
              activeBackgroundDayColor: theme.colorScheme.secondary,
              dotsColor: theme.primaryColor,
              selectableDayPredicate: (date) => date.day != 23,
              locale: 'en_ISO',
            )
          ],
        ),
        Expanded(
          child: ListView.builder(itemCount: 1,
              itemBuilder: (context,index) => TaskItem()

          ),
        )
      ],
    );
  }
}
