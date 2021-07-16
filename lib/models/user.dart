import 'package:flutter/material.dart';

class User {
  bool isActive;
  bool isAdmin;
  String userNames;
  String userImageURL;

  User({
    @required this.isActive,
    @required this.isAdmin,
    @required this.userNames,
    @required this.userImageURL,
  });
}