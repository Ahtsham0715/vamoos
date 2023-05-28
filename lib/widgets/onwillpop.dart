import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Future<bool> onWillPop() async {
//   return (await showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           backgroundColor: Colors.white,
//           title: const Text(
//             'Are you sure?',
//             style: TextStyle(fontSize: 18.0),
//           ),
//           content: const Text(
//             'Do you want to exit the App',
//             style: TextStyle(fontSize: 18.0),
//           ),
//           actions: <Widget>[
//             MaterialButton(
//               onPressed: () => Navigator.of(context).pop(false),
//               child: const Text(
//                 'No',
//                 style: TextStyle(fontSize: 18.0),
//               ),
//             ),
//             MaterialButton(
//               onPressed: () => SystemNavigator.pop(),
//               child: const Text(
//                 'Yes',
//                 style: TextStyle(fontSize: 18.0),
//               ),
//             ),
//           ],
//         ),
//       )) ??
//       false;
// }
