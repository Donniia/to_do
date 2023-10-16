import 'package:flutter/material.dart';
import 'package:to_do/core/network/firestore_utils.dart';
import 'package:to_do/core/widgets/custom_text_form_widget.dart';
import 'package:to_do/model/task_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomBottomSheet extends StatefulWidget {
  CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  TextEditingController titleController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    var theme = Theme.of(context);
    return Container(
      color: theme.colorScheme.secondary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                locale!.addyourtask,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                  fontSize: 20,
                ),
              ),
              CustomTextForm(
                hintTitle: locale!.enterTitle,
                controller: titleController,
                validator: (String? value) {
                  if (value == null || value.trim().isEmpty) {
                    return locale!.provideTitle;
                  } else if (value.length < 10) {
                    return locale!.titlecharacters;
                  } else {
                    return null;
                  }
                },
              ),
              CustomTextForm(
                hintTitle: locale!.enterTitle,
                controller: descriptionController,
                maxLines: 4,
                validator: (String? value) {
                  if (value == null || value.trim().isEmpty) {
                    return locale!.providedes;
                  } else if (value.length < 10) {
                    return locale!.descharacters;
                  } else {
                    return null;
                  }
                },
              ),
              Text(
                locale!.selectTime,
                style: theme.textTheme.bodyMedium!.copyWith(
                  fontSize: 20,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    showCalender(context);
                  },
                  child: Text(
                    "14 oct 2023",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium!
                        .copyWith(color: theme.primaryColor),
                  )),
              ElevatedButton(
                  onPressed: ()  {
                    if (formKey.currentState!.validate()) {
                      var model = TaskModel(
                          id: "1",
                          title: titleController.text,
                          description: descriptionController.text,
                          dateTime: DateTime.now(),
                          isDone: false);
                        FirestoreUtils.addDataToFirestore(model);

                    }
                  },
                  child: Text(
                    locale!.addTask,
                    style:
                        theme.textTheme.bodyMedium!.copyWith(color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

showCalender(BuildContext context) {
  return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)));
}
