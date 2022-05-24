import 'package:flutter/material.dart';
import 'package:flutter_web_example/helpers/style.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: disable, borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      child: Text(
        text,
        style: TextStyle(
            fontFamily: 'HumanSans',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    );
  }
}
