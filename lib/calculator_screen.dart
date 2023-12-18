import 'dart:async';

import 'package:calculator/controllers/calculator_controller.dart';
import 'package:flutter/material.dart';

import 'templates/custom_button.dart';
import 'templates/custom_number.dart';
import 'templates/custom_top.dart';

import 'package:get/get.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  CalculatorController _calculatorController = Get.find();
  bool _pressed = false;
  bool _canRemove = true;

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
            Obx(()  => GestureDetector(
            onHorizontalDragUpdate: (details){
              if ( details.primaryDelta!<0 && _canRemove){
                _calculatorController.removeLastNumber();
                _canRemove = false;
                Timer(Duration(milliseconds: 500), () {
                  _canRemove = true;
                });
              }
            },
              child: Container(

                  height: 200,
                  child: FittedBox(
                    child: Text(
                      "${_calculatorController.resultMath}",
                      style: TextStyle(color: Colors.white,
                      fontSize: 90),
                    ),
                  ),
                alignment: Alignment.bottomRight,
                ),
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTop(
                  text: "AC",
                  onTap: () => _calculatorController.resetAll(),
                ),
                CustomTop(
                  text: "+/_",
                  onTap: () => _calculatorController.negativeChange(),
                ),
                CustomTop(
                  text: "%",
                  onTap: () => _calculatorController.percent(),
                ),
                // CustomTop(
                //   text: "del",
                //   onTap: () => _calculatorController.removeLastNumber(),
                // ),
                CustomButton(text: "/", onTap: (){
                  _calculatorController.selectOperation('/');
                },),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomNumber(
                  text: "7",
                  onTap: () => _calculatorController.addNumber('7'),
                ),
                CustomNumber(
                  text: "8",
                  onTap: () => _calculatorController.addNumber('8'),
                ),
                CustomNumber(
                  text: "9",
                  onTap: () => _calculatorController.addNumber('9'),
                ),
                CustomButton(text: "x", onTap: (){
                  _calculatorController.selectOperation('x');
                },),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomNumber(
                  text: "4",
                  onTap: () => _calculatorController.addNumber('4'),
                ),
                CustomNumber(
                  text: "5",
                  onTap: () => _calculatorController.addNumber('5'),
                ),
                CustomNumber(
                  text: "6",
                  onTap: () => _calculatorController.addNumber('6'),
                ),
                CustomButton(text: "-", onTap: (){
                  _calculatorController.selectOperation('-');
                },),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomNumber(
                  text: "1",
                  onTap: () => _calculatorController.addNumber('1'),
                ),
                CustomNumber(
                  text: "2",
                  onTap: () => _calculatorController.addNumber('2'),
                ),
                CustomNumber(
                  text: "3",
                  onTap: () => _calculatorController.addNumber('3'),
                ),
                CustomButton(text: "+", onTap: (){
                  _calculatorController.selectOperation('+');
                },),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTapDown: (_) {
                    setState(() {
                      _pressed = true;
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      _pressed = false;
                    });
                  },
                  onTap: (){
                    _calculatorController.addNumber('0');
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
                        color: _pressed
                            ? Color.fromRGBO(115, 115, 115, 1)
                            : Color.fromRGBO(51, 51, 51, 1)),
                    padding: EdgeInsets.only(left: 30),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                CustomNumber(
                  text: ",",
                  onTap: () => _calculatorController.dotOperation(),
                ),
                CustomButton(text: "=",onTap: () {
                  _calculatorController.operationResult();
                },),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
