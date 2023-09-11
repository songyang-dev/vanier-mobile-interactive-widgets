import 'package:flutter/material.dart';

import '../services/profile_info.dart';
import '../shared/shared.dart';

/// This widget is stateful to prevent data loss during hot reloading.
/// It can also be stateless.
class NameFields extends StatefulWidget {
  const NameFields({
    super.key,
    required this.profileInfo,
  });

  final ProfileInfo profileInfo;

  @override
  State<NameFields> createState() => _NameFieldsState();
}

/// The widget holding both input fields.
class _NameFieldsState extends State<NameFields> {
  /// These two controllers are to capture the text data.
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  /// This is a function that collects the data from the controllers.
  /// It is called by the TextField's callbacks.
  void _submitData() {
    widget.profileInfo.firstName = _firstNameController.text;
    widget.profileInfo.lastName = _lastNameController.text;
    debugPrint("In submit data!");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: ShortTextField(
              textController: _firstNameController,
              label: "First Name",
              onSubmitted: _submitData),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: ShortTextField(
              textController: _lastNameController,
              label: "Last Name",
              onSubmitted: _submitData),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }
}
