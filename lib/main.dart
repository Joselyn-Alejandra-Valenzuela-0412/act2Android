import 'package:flutter/material.dart';

import 'package:myapp/Screen/moving_object_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovingObjectAnimation(),
    );
  }
}