import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Profile')),
      body: const PersonalForm(),
    );
  }
}

class PersonalForm extends StatefulWidget {
  const PersonalForm({
    super.key,
  });

  @override
  State<PersonalForm> createState() => _PersonalFormState();
}

class _PersonalFormState extends State<PersonalForm> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Create a profile",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
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
        ),
      ),
    );
  }
}

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
