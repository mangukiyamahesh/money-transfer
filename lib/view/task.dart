import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  var data = {
    "product": [
      'product1',
      'product2',
      'product3',
      'product4',
    ]
  };

  @override
  Widget build(BuildContext context) {
    print(data['product']![0]);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('${data['product']![0]}')),
        ],
      ),
    );
  }
}
