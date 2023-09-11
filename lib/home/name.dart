import 'package:flutter/material.dart';

import '../services/profile_info.dart';
import '../shared/shared.dart';

class NameFields extends StatefulWidget {
  const NameFields({
    super.key,
    required this.profileInfo,
  });

  final ProfileInfo profileInfo;

  @override
  State<NameFields> createState() => _NameFieldsState();
}

class _NameFieldsState extends State<NameFields> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

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
