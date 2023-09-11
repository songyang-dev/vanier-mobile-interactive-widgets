import 'package:flutter/material.dart';

import 'name.dart';
import 'pet.dart';

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
        child: ListView(
          children: [
            Column(
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
                NameFields(
                    firstNameController: _firstNameController,
                    lastNameController: _lastNameController),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Do you have a pet?",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                const PetChoices(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
