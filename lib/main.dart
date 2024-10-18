import 'package:dice_provider/controller/home_screen_controller.dart';
import 'package:dice_provider/view/home_screen/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenController(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
