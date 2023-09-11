import 'package:flutter/material.dart';

import '../services/profile_info.dart';
import 'name.dart';
import 'pet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Profile')),
      body: PersonalForm(),
    );
  }
}

class PersonalForm extends StatelessWidget {
  PersonalForm({
    super.key,
  });

  final profileInfo = ProfileInfo();

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
                NameFields(profileInfo: profileInfo),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Do you have a pet?",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                PetChoices(
                  profileInfo: profileInfo,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // check if the profile info is properly received
                    debugPrint(profileInfo.firstName);
                    debugPrint(profileInfo.lastName);
                    debugPrint(profileInfo.pet?.name);
                  },
                  icon: const Icon(Icons.check),
                  label: const Text("Confirm"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
