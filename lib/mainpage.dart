import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/search.dart';

import 'list.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 164, 74, 216),
          title: Text(
            "W E I G H T L O G",
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InsertData()));
              },
              child: const Text('Insert Data'),
              color: Color.fromARGB(255, 210, 103, 219),
              textColor: Colors.white,
              minWidth: 300,
              height: 40,
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FetchData()));
              },
              child: const Text('Fetch Data'),
              color: Color.fromARGB(255, 243, 33, 215),
              textColor: Colors.white,
              minWidth: 300,
              height: 40,
            )
          ],
        )));
  }
}
