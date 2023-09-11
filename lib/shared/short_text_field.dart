import 'package:flutter/material.dart';

class ShortTextField extends StatelessWidget {
  const ShortTextField({
    super.key,
    required this.textController,
    required this.label,
    required this.onSubmitted,
  });

  final TextEditingController textController;
  final String label;
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
