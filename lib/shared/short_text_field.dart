import 'package:flutter/material.dart';

class ShortTextField extends StatelessWidget {
  const ShortTextField({
    super.key,
    required this.textController,
    required this.label,
  });

  final TextEditingController textController;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
      ),
    );
  }
}
