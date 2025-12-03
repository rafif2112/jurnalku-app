import 'package:flutter/material.dart';
import 'package:jurnalku_app/pages/explore.dart';
import 'package:jurnalku_app/pages/witnessRequest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Explore
      (),
    );
  }
}