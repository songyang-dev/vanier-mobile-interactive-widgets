import 'package:flutter/material.dart';

/// A widget wrapper to simplify building a text field
class ShortTextField extends StatelessWidget {
  const ShortTextField({
    super.key,
    required this.textController,
    required this.label,
    required this.onSubmitted,
  });

  final TextEditingController textController;
  final String label;

  /// The function to collect data
  final void Function() onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      onSubmitted: (value) => onSubmitted(),
      onChanged: (value) => onSubmitted(),
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
      ),
    );
  }
}
