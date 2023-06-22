import 'package:flutter/material.dart';
import 'package:zoom/utils/color.dart';

import '../widegts/HomeScreen_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  PageChange(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        title: Text("Meet & Chat"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeScreenButton(
                icon: Icons.videocam,
                onpress: () {},
                text: 'New meeting',
              ),
              HomeScreenButton(
                icon: Icons.add_box_rounded,
                onpress: () {},
                text: 'Join Meeting',
              ),
              HomeScreenButton(
                icon: Icons.calendar_today,
                onpress: () {},
                text: 'Sceduling meet',
              ),
              HomeScreenButton(
                  icon: Icons.arrow_upward_rounded,
                  onpress: () {},
                  text: "Scanner scanner")
            ],
          ),
          const Expanded(
              child: Center(
            child: Text(
              'Create/join Meeting with Just one click!!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: footerColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: PageChange,
          currentIndex: _page,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 14.0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.comment_bank,
                ),
                label: "Meet & char"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.lock_clock,
                ),
                label: "Meeting"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: "Contacts"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings_outlined,
                ),
                label: "Settings"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings_outlined,
                ),
                label: "Meet & char")
          ]),
    );
  }
}
