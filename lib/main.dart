import 'package:flutter/material.dart';
import 'package:fruit_hub/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: WelcomeScreen(),
      );
}
