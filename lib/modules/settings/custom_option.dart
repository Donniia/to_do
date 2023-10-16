import 'package:flutter/material.dart';

class CustomOption extends StatelessWidget {
  final String title;
  final String option;

  const CustomOption({required this.title,required this.option});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch ,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Text(title , style: theme.textTheme.bodyLarge!.copyWith(
              color: theme.colorScheme.onSecondary
          )),
        ),
        Container(
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
              Icon(Icons.arrow_drop_down,color: theme.primaryColor,)
            ],
          ),
        )
      ],
    );
  }
}
