import 'package:flutter/material.dart';
import 'User.dart';

void main() {
  User user = User(
    id: 1,
    name: 'John Doe',
    email: 'john@example.com',
    createdAt: DateTime.now(),
  );

  Map<String, dynamic> userJson = user.toJson();
  print('User as JSON: $userJson');

  Map<String, dynamic> jsonData = {
    'id': 2,
    'name': 'Jane Doe',
    'email': 'jane@example.com',
    'created_at': '2023-01-01T00:00:00.000Z',
  };

  User userFromJson = User.fromJson(jsonData);
  print('User from JSON: $userFromJson.name');
}
