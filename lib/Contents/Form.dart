import 'package:flutter/material.dart';

class AddCourse extends StatefulWidget {
  const AddCourse({super.key});

  @override
  State<AddCourse> createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourse> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Title",
                hintText: "Enter a Course Title",
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Title input can't be empty";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Teacher",
                hintText: "Enter a The teacher Name",
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Teacher input can't be empty";
                }
                return null;
              },
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    style: const ButtonStyle(
                        padding: WidgetStatePropertyAll(EdgeInsets.only(
                            left: 20, right: 20, top: 20, bottom: 20)),
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.blueAccent)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Envoi en cours...")));
                        FocusScope.of(context).requestFocus(FocusNode());
                      }
                    },
                    label: const Text(
                      "Add a Course",
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: const Icon(Icons.add, color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
