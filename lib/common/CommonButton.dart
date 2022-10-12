import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final padding;
  final shape;
  final color;
  final minwidth;

  const CommonButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.shape,
      this.color,
      this.padding,
      this.minwidth});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialButton(
      onPressed: onTap,
      height: height * 0.07,
      minWidth: minwidth,
      color: color,
      shape: shape,
      padding: padding,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: height * 0.02,
        ),
      ),
    );
  }
}
