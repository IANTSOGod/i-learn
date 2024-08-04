import 'package:flutter/material.dart';
import 'package:learn_1/Contents/About.dart';
import 'package:learn_1/Contents/CourseList.dart';
import 'package:learn_1/Contents/Form.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  int _currentIndex = 0;

  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 231, 228, 228),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blueAccent,
          title: const Text(
            "I-Tech",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Animatic'),
          ),
        ),
        body: [Courselist(), About(), const AddCourse()][_currentIndex],
        // bottomNavigationBar: BottomNavigationBar(
        //   items: const [
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        //     BottomNavigationBarItem(icon: Icon(Icons.info), label: "About us"),
        //     BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add course")
        //   ],
        //   selectedItemColor: Colors.blueAccent,
        //   iconSize: 32,
        //   elevation: 10,
        //   currentIndex: _currentIndex,
        //   onTap: (index) => setCurrentIndex(index),
        // )
        bottomNavigationBar: WaterDropNavBar(
          backgroundColor: Colors.white,
          onItemSelected: (index) {
            setCurrentIndex(index);
          },
          selectedIndex: _currentIndex,
          barItems: [
            BarItem(
              filledIcon: Icons.home_filled,
              outlinedIcon: Icons.home_outlined,
            ),
            BarItem(
                filledIcon: Icons.info_rounded,
                outlinedIcon: Icons.info_outline_rounded),
            BarItem(
                filledIcon: Icons.add_rounded, outlinedIcon: Icons.add_outlined)
          ],
        ));
  }
}
