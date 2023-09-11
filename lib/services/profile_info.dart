import 'pets.dart';

class ProfileInfo {
  String firstName;
  String lastName;
  Pets? pet;

  ProfileInfo({
    this.firstName = '',
    this.lastName = '',
    this.pet,
  });
}
