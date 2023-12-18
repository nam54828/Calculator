import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {

  final String text;
  final Function onTap;
  const CustomButton({
    Key? key,
    required this.text, required this.onTap
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();

}

class _CustomButtonState extends State<CustomButton> {

  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapUp: (_) => setState(() => _pressed = false),
      onTap: (){
        widget.onTap();
      },
      child: Container(
        height: 80,
        width: 80,
        child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w500
              ),
            )
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(180),
            color: _pressed ? Color.fromRGBO(251, 199, 142, 1) : Color.fromRGBO(254, 159, 10, 1)
        ),
      ),
    );
  }
}