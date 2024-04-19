import 'package:flutter_application_telegram/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_telegram/Tugas12/Telegram.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Telepati', home: telegram());
  }
}
