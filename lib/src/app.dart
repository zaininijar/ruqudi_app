import 'package:flutter/material.dart';
import 'package:ruqudi_app/src/camera/camera_view.dart';
import 'package:ruqudi_app/src/home/home_view.dart';
import 'package:ruqudi_app/src/my_cards/my_card.dart';
import 'package:ruqudi_app/src/onboardings/onboardings_view.dart';
import 'package:ruqudi_app/src/register_card/register_card.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const OnBoardingView(),
      routes: {
        '/camera_view': (context) => const CameraView(),
        '/home': (context) => const HomeView(),
        '/register': (context) => const RegisterCard(),
        '/on_boardings': (context) => const OnBoardingView(),
        '/my_cards': (context) => const MyCards(),
      },
    );
  }
}
