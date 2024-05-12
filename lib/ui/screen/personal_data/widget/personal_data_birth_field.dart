import 'package:digital_bookshelf_client/bloc/user_info_bloc.dart';
import 'package:digital_bookshelf_client/data/data.dart';
import 'package:digital_bookshelf_client/styles.dart';
import 'package:digital_bookshelf_client/ui/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalDataBirthField extends StatefulWidget {
  const PersonalDataBirthField({super.key});

  @override
  State<PersonalDataBirthField> createState() => _PersonalDataBirthFieldState();
}

class _PersonalDataBirthFieldState extends State<PersonalDataBirthField> {
  @override
  Widget build(BuildContext context) => ModelBlocDataSelector<UserInfoBloc, UserInfo, UserInfo>(
    selector: (e) => e,
    builder: (context, data) {
      final T = Translations.of(context);
      final model = context.read<PersonalData>();
      return Row(
        children: [
          Expanded(
            child: Text(
              model.birth?.formatDate() ?? '',
            ),
          ),
          IconButton(
            onPressed: () async {
              model.birth = null;
              setState(() { });
            },
            icon: const Icon(Icons.delete),
          ),
          IconButton(
            onPressed: () async {
              final result = await showDatePicker(
                context: context,
                initialDate: model.birth,
                firstDate: DateTime(1900),
                lastDate: DateTime(DateTime.now().year - 5),
                helpText: T.utils.datePicker.helpText,
                cancelText: T.utils.cancel,
                confirmText: T.utils.datePicker.confirmText,
                errorFormatText: T.utils.datePicker.errorFormatText,
                errorInvalidText: T.utils.datePicker.errorInvalidText,
                fieldHintText: T.utils.datePicker.fieldHintText,
                fieldLabelText: T.utils.datePicker.fieldLabelText,
              );
              if (result != null) {
                model.birth = result;
              }
              setState(() { });
            },
            icon: const Icon(Icons.date_range),
          ),
        ],
      );
    },
  );
}