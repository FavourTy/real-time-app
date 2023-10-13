import 'package:flutter/material.dart';
import 'package:http/http.dart ';
import 'dart:convert';

String urlString = 'https://jsonplaceholder.typicode.com/todos/1';
Uri uri = Uri.parse(urlString);

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    Response response = await get(uri);
    Map data = jsonDecode(response.body);
    print(data);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Loading Screen"),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Column(children: [
          ElevatedButton(onPressed: () {}, child: Text("pushMe"))
        ])));
  }
}
