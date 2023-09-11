import 'package:flutter/material.dart';

enum Pets { dog, cat, other, none }

class PetChoices extends StatefulWidget {
  const PetChoices({super.key});

  @override
  State<PetChoices> createState() => _PetChoicesState();
}

class _PetChoicesState extends State<PetChoices> {
  Pets? _selectedPet;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text("Dog"),
          leading: Radio<Pets>(
            value: Pets.dog,
            groupValue: _selectedPet,
            onChanged: (Pets? value) {
              setState(() {
                _selectedPet = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text("Cat"),
          leading: Radio<Pets>(
            value: Pets.cat,
            groupValue: _selectedPet,
            onChanged: (Pets? value) {
              setState(() {
                _selectedPet = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text("Other"),
          leading: Radio<Pets>(
            value: Pets.other,
            groupValue: _selectedPet,
            onChanged: (Pets? value) {
              setState(() {
                _selectedPet = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text("None"),
          leading: Radio<Pets>(
            value: Pets.none,
            groupValue: _selectedPet,
            onChanged: (Pets? value) {
              setState(() {
                _selectedPet = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
