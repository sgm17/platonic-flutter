import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/providers/error_provider/create_flat/step4_error_provider.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:flutter/material.dart';

/* Group addescription
    Autogenerated by FlutLab FTF Generator
  */
class CreateFlatDetailDescriptionInput extends ConsumerWidget {
  const CreateFlatDetailDescriptionInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flatCreateState = ref.read(flatCreateProvider);

    return TextFormField(
      initialValue:
          flatCreateState.description != FlatModel.emptyFlat.description
              ? (flatCreateState.description).toString()
              : null,
      onSaved: (description) {
        ref
            .read(flatCreateProvider.notifier)
            .setDescription(description: description!);
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          ref.read(step4ErrorProvider.notifier).state =
              const ErrorApp(code: 'step4addescription');
          return 'Please provide a description.';
        }
        if (value.length < 20) {
          ref.read(step4ErrorProvider.notifier).state =
              const ErrorApp(code: 'step4addescriptionshort');
          return 'Description must be at least 20 characters long.';
        }
        return null;
      },
      textInputAction: TextInputAction.send,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: TextInputType.text,
      maxLines: null,
      maxLength: 350,
      style: const TextStyle(
          height: 1.1530000141688757,
          fontSize: 14.0,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w300,
          color: Color.fromARGB(255, 255, 255, 255)),
      decoration: InputDecoration(
        hintText: AppLocalizations.of(context)!.step4DescriptionHintText,
        hintStyle: TextStyle(color: Colors.grey[400]),
        counterText: "",
        errorStyle: const TextStyle(fontSize: 0.01),
        contentPadding: const EdgeInsets.all(
          10.0,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 43, 45, 46), width: 1.0)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 43, 45, 46), width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.red, width: 1.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.red, width: 1.0)),
      ),
    );
  }
}
