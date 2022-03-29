import 'package:get/get.dart';

class User {
  String name;
  List likes = [].obs;

  User({required this.name});
}

User bigfatcat = User(
  name: '당근조아',
);
