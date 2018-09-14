import 'package:flutter/material.dart';
import 'category_route.dart';

void main() {
  runApp(RevizeApp());
}

class RevizeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Revize',
      home: CategoryRoute(),
    );
  }
}
