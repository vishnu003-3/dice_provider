// import 'dart:math';

// import 'package:diceroll/controller/home_screen_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int? random;
//   List dices = [
//     "assets/images/d1.jpg",
//     "assets/images/d2.jpg",
//     "assets/images/d3.jpg",
//     "assets/images/d4.jpg",
//     "assets/images/d5.jpg",
//     "assets/images/d6.jpg"
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: InkWell(
//           onTap: () {
//             setState(() {
//               random = Random().nextInt(dices.length);
//             });
//           },
//           child: Container(
//             height: 500,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage(
//                         context.watch<HomeScreenController>().currentDice))),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:dice_provider/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            context.read<HomeScreenController>().diceRoll();
          },
          child: Container(
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        context.watch<HomeScreenController>().currentDice))),
          ),
        ),
      ),
    );
  }
}
