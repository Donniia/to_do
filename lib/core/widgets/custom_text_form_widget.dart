import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final FormFieldValidator<String?> validator;
  final TextEditingController controller;
  final String hintTitle;
  final int maxLines;

  CustomTextForm(
      {required this.hintTitle,
      required this.controller,
      required this.validator,
      this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return TextFormField(
      maxLines: maxLines,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
          hintText: hintTitle,
          hintStyle: theme.textTheme.bodySmall!.copyWith(
            fontSize: 15
          )),
    );
  }
}
