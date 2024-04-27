// import 'package:flutter/material.dart';

// class TestOne extends StatelessWidget {
//   const TestOne({super.key});

//   @override
//   Widget build(BuildContext context) {
//     String? image, name;
//     int? index = 0;
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 10),
//       child: Stack(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Image.asset(
//               image ?? 'no image',
//               fit: BoxFit.cover,
//               height: 250,
//               width: MediaQuery.of(context as BuildContext).size.width,
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.only(left: 10),
//             margin: const EdgeInsets.only(top: 170),
//             width: MediaQuery.of(context as BuildContext).size.width,
//             decoration: const BoxDecoration(
//               color: Colors.black26,
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(10),
//                 bottomRight: Radius.circular(10),
//               ),
//             ),
//             child: Text(
//               name ?? 'no name',
//               style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Indega extends StatefulWidget {
  const Indega({super.key});

  @override
  State<Indega> createState() => _IndegaState();
}

class _IndegaState extends State<Indega> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: controller, // PageController
        count: 6,
        effect: WormEffect(), // your preferred effect
        onDotClicked: (index) {});
  }
}
