
import 'package:flutter/material.dart';

class CustomNumber extends StatefulWidget {
  final String text;
  final Function onTap;

  const CustomNumber({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  State<CustomNumber> createState() => _CustomNumberState();
}

class _CustomNumberState extends State<CustomNumber> {
  bool _pressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_){
        setState(() {
          _pressed = true;
        });
      },
      onTapUp: (_){
        setState(() {
          _pressed = false;
        });
      },
      onTap: () {
        widget.onTap();
      },
      child: Container(
        height: 80,
        width: 80,
        child: Center(
            child: Text(
          widget.text,
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.w500),
        )),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(180),
            color: _pressed ? Color.fromRGBO(115, 115, 115, 1) :Color.fromRGBO(51, 51, 51, 1)),
      ),
    );
  }
}
