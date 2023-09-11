import 'package:flutter/material.dart';
import '../shared/shared.dart';

class NameFields extends StatelessWidget {
  const NameFields({
    super.key,
    required TextEditingController firstNameController,
    required TextEditingController lastNameController,
  })  : _firstNameController = firstNameController,
        _lastNameController = lastNameController;

  final TextEditingController _firstNameController;
  final TextEditingController _lastNameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: ShortTextField(
              textController: _firstNameController, label: "First Name"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: ShortTextField(
              textController: _lastNameController, label: "Last Name"),
        ),
      ],
    );
  }
}
