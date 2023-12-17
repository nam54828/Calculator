
import 'package:flutter/material.dart';

import 'templates/custom_button.dart';
import 'templates/custom_number.dart';
import 'templates/custom_top.dart';



class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  bool _pressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTop(text: "AC"),
                CustomTop(text: "+/_"),
                CustomTop(text: "%"),
                GestureDetector(
                  child: CustomButton(text: "/"),
                  onTap: (){

                  },),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomNumber(text: "7"),
                CustomNumber(text: "8"),
                CustomNumber(text: "9"),
                GestureDetector(
                  child: CustomButton(text: "x"),
                  onTap: (){

                  },),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomNumber(text: "4"),
                CustomNumber(text: "5"),
                CustomNumber(text: "6"),
                GestureDetector(
                  child: CustomButton(text: "-"),
                  onTap: (){

                  },),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomNumber(text: "1"),
                CustomNumber(text: "2"),
                CustomNumber(text: "3"),
                GestureDetector(
                  child: CustomButton(text: "+"),
                  onTap: (){

                  },),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
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
                    width: 172,
                    child: Text(
                      "0",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: _pressed ? Color.fromRGBO(115, 115, 115, 1) :Color.fromRGBO(51, 51, 51, 1)),
                    padding: EdgeInsets.only(left: 30),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                CustomNumber(text: ","),
                GestureDetector(
                  child: CustomButton(text: "="),
                onTap: (){

                },),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
