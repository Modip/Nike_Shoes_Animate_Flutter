import 'package:flutter/material.dart';
import 'package:nikeanim/screens/animate_screen.dart';

void main() {
  runApp(const MyApp());
}

//Create by Modip
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const AnimateScreen(),
    );
  }
}
