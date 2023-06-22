import 'package:flutter/material.dart';
import 'package:zoom/utils/color.dart';

class Custom_button extends StatelessWidget {
  final String text;
  final VoidCallback onpress;
  const Custom_button({super.key, required this.text, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(38.0),
      child: ElevatedButton(
        onPressed: onpress,
        child: Text(
          text,
          style: TextStyle(fontSize: 17),
        ),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: const BorderSide(color: buttonColor)),
            primary: buttonColor,
            minimumSize: const Size(double.infinity, 50)),
      ),
    );
  }
}
