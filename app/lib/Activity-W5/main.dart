

import 'package:flutter/material.dart';
import 'gradientButton.dart';
// void main() {
//   runApp(MaterialApp(
//     home: Column(
//       children:[
//         Container(
//           height: 100,
//           color: Colors.white,
//         ),
//         Container(
//           height: 400,
//           color: Colors.blue,
//         ),
//         SizedBox(
//           height: 100,
//           child: Row(
//             children: [
//               Expanded(
//                   child: Container(
//                       color: Colors.teal,
//                   )
//               ),
//               Container(
//                 color: Colors.pink,
//                 width: 100,
//               ),
//             ],
//           ),
//         ),
//         Row(
//           children: [
//             Expanded(
//                 child: Container(
//                   color: Colors.orangeAccent,
//                   height: 100,
//             )),
//             SizedBox(height: 100,width: 20),
//             Expanded(child: Container(
//               color: Colors.orangeAccent,
//               height: 100,
//             )),
//             SizedBox(height: 100,width: 20,),
//             Expanded(child: Container(
//               color: Colors.orangeAccent,
//               height: 100,
//             )),
//           ],
//         ),
//         Expanded(
//           child: Container(
//             color: Colors.pinkAccent,
//           ),
//         )
//       ],
//     ),
//   ));
// }

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            gradientButton(label: "OOP", start: Colors.yellow[200]!, end: Colors.yellow[600]!),
            gradientButton(label: "Flutter", start: Colors.red[200]!, end: Colors.red[600]!),
            gradientButton(label: "DART", start: Colors.green[200]!, end: Colors.green[600]!),
          ],
        ),
      ),
    ),
  );
}
