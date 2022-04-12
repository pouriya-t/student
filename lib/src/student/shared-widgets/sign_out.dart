import 'package:flutter/material.dart';
import '../../site/screens/login_screen.dart';
import 'menu/bottom_navigation.dart';

class SignOutWidget extends StatelessWidget {
  const SignOutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('AlertDialog Title'),
      content: const Text('AlertDialog description'),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(primary: Colors.green),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => LoginScreen()));
          },
          child: const Text('Yes'),
        ),
        TextButton(
          style: TextButton.styleFrom(primary: Colors.purple),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => BottomNavigation())),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}


//  return TextButton(
//       onPressed: () => showDialog<String>(
//         context: context,
//         builder: (BuildContext context) => AlertDialog(
//           title: const Text('AlertDialog Title'),
//           content: const Text('AlertDialog description'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () => Navigator.pop(context, 'Cancel'),
//               child: const Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (_) => LoginScreen()));
//               },
//               child: const Text('Yes'),
//             ),
//           ],
//         ),
//       ),
//       child: const Text('Show Dialog'),
//     );