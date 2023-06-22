import 'package:flutter/material.dart';
import 'package:zoom/utils/color.dart';

class HomeScreenButton extends StatelessWidget {
  final VoidCallback onpress;
  final IconData icon;
  final String text;
  const HomeScreenButton(
      {Key? key, required this.onpress, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      // blurRadius: 10,
                      color: Colors.black.withOpacity(0.86),
                      offset: Offset(0, 4))
                ]),
            width: 60,
            height: 60,
            child: Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
