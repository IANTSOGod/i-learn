import 'package:flutter/material.dart';

class Courselist extends StatelessWidget {
  final events = [
    {"title": "Flutter", "content": "Build a mobile App with flutter"},
    {"title": "Java", "content": "Learn Java and his framework"},
    {"title": "C++", "content": "Learn some C++ framework with us"},
    {"title": "Js", "content": "Learn web framework of js"}
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          final title = event['title'];
          final content = event['content'];

          return Card(
            child: ListTile(
              leading: const FlutterLogo(
                size: 30,
              ),
              title: Text(
                "$title",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("$content"),
              trailing: const Icon(Icons.info),
            ),
          );
        },
      ),
    );
  }
}
