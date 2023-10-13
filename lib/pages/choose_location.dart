import 'package:flutter/material.dart';
import 'loading.dart';

int counter = 10;

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Choose a location"),
          centerTitle: true,
          elevation: 0,
        ),
        body: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Loading()));
            },
            child: Text("counter is $counter")));
  }
}
