import 'package:flutter/material.dart';

class UnselectedOption extends StatelessWidget {
  final String option ;
  const UnselectedOption({required this.option});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: 200,
      height: 50,
      color: theme.colorScheme.secondary,
      margin: EdgeInsets.symmetric(horizontal: 40,vertical: 15),
      child: Text(option,style: theme.textTheme.bodyLarge,),
    );
  }
}
