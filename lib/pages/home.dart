import 'package:flutter/material.dart';

import 'choose_location.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        TextButton.icon(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChooseLocation()));
            },
            icon: Icon(Icons.edit_location),
            label: Text("Edit Location"))
      ])),
    );
  }
}
