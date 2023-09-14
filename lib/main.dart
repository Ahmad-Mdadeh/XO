import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xo/panorama.dart';
import 'package:xo/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/StartScreen',
      getPages: [
        GetPage(name: '/StartScreen', page: () => const StartScreen(),),
      ],
    );
  }
}
