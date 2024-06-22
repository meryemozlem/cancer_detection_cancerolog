
import 'package:flutter/material.dart';
import 'package:cancerolog/screens/welcome_screen.dart';
import 'dart:io';
import 'package:tensorflow_lite_flutter/tensorflow_lite_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:developer' as devtools;
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
