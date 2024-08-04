import 'package:flutter/material.dart';
import 'EventPage.dart';

class HomePage extends StatelessWidget {
  final StartIcon = const Icon(Icons.start_sharp, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      // appBar: AppBar(
      //   title: const Text('Asynconf 2024'),
      //   backgroundColor: Colors.amberAccent,
      // )
      // ,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logoPrev.png"),
          const Center(
            child: Text(
              "Mobile App",
              style: TextStyle(
                  fontSize: 42,
                  fontFamily: 'Animatic',
                  color: Colors.blueAccent),
            ),
          ),
          const Text(
            "Learn with the legends",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          const Padding(padding: EdgeInsets.only(top: 50)),
          ElevatedButton.icon(
            style: const ButtonStyle(
                padding: WidgetStatePropertyAll(
                    EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20)),
                backgroundColor: WidgetStatePropertyAll(Colors.blueAccent)),
            onPressed: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (_, __, ___) => const EventPage()));
            },
            label: const Text(
              "Start",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            icon: StartIcon,
          )
        ],
      ),
    );
  }
}
