import 'package:flutter/material.dart';
import 'package:instagram_flutter/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name = 'Your Name';
  var id = 'Your ID';
  var description = 'Your Description';
  var image = 'package:instagram_flutter/asset/profil_image.jpg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: EditProfileState(id, name, description, image));
  }
}
