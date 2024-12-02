import 'package:flutter/material.dart';

class MontserratText extends StatefulWidget {
  const MontserratText({
    super.key,
    required this.text,
    required this.weight,
    required this.size,
    required this.color,
  });

  final String text;
  final String weight;
  final double size;
  final Color color;

  @override
  State<MontserratText> createState() => _MontserratTextState();
}

class _MontserratTextState extends State<MontserratText> {
  @override
  Widget build(BuildContext context) {
    FontWeight fontWeight = FontWeight.normal;

    if (widget.weight == 'bold') {
      setState(() {
        fontWeight = FontWeight.bold;
      });
    } else if (widget.weight == 'normal') {
      setState(() {
        fontWeight = FontWeight.normal;
      });
    }

    return Text(
      widget.text,
      style: TextStyle(
          color: widget.color,
          fontFamily: 'Montserrat',
          fontWeight: fontWeight,
          fontSize: widget.size),
    );
  }
}
