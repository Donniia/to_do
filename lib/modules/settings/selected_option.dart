import 'package:flutter/material.dart';

class SelectedOption extends StatelessWidget {
  final String option;
  const SelectedOption({required this.option});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: 200,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 40,vertical: 15),
      decoration: BoxDecoration(
        border: Border.all(width: 1.5,color: theme.primaryColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(option,style: theme.textTheme.bodyLarge,),
          Icon(Icons.check_rounded,color: theme.primaryColor,)
        ],
      ),
    );
  }
}
