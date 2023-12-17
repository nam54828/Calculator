import 'package:flutter/material.dart';

class CustomTop extends StatefulWidget {
  final String text;
  const CustomTop({Key? key, required this.text}) : super(key: key);

  @override
  State<CustomTop> createState() => _CustomTopState();
}

class _CustomTopState extends State<CustomTop> {
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
      child: Container(
        height: 80,
        width: 80,
        child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w500),
            )),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(180),
            color: _pressed ? Color.fromRGBO(217, 217, 217, 1) : Color.fromRGBO(165, 165, 165, 1)),
      ),
    );
  }
}
