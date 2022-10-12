import 'package:fashion_hub/view/add_card_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddCardScreen(),
    );
  }
}

// var data = [
//   {'title': 'name'},
//   {'title': 'name'},
//   {'title': 'name'},
//   {'title': 'name'},
//   {'title': 'name'},
//   {'title': 'name'},
//   {'title': 'name'},
// ];
// class APIDEMO extends StatefulWidget {
//   const APIDEMO({Key? key}) : super(key: key);
//
//   @override
//   State<APIDEMO> createState() => _APIDEMOState();
// }
//
// class _APIDEMOState extends State<APIDEMO> {
//   Future<void> getData() async {
//     http.Response response =
//         await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
//
//     if (response.statusCode == 200) {
//       var data = jsonDecode(response.body);
//
//       print('SUCCESS  ${data[0]['title']}');
//     } else {
//       print('STATUS ${response.statusCode}');
//     }
//   }
//
//   @override
//   void initState() {
//     getData();
//     // TODO: implement initState
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//             // crossAxisAlignment: CrossAxisAlignment.center,
//             // children:
//             //     List.generate(data.length, (index) => Text(data[1]['title'])),
//             ),
//       ),
//     );
//   }
// }
