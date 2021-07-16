import 'package:allusers/fdg.dart';
import 'package:flutter/material.dart';

import 'views/pages/allUsers_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All Users',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: AllUsersPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

