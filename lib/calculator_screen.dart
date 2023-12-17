import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
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
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "AC",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(165, 165, 165, 1)),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "+/_",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(165, 165, 165, 1)),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "%",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(165, 165, 165, 1)),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "/",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(254, 159, 10, 1)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "7",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "8",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "9",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "X",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(254, 159, 10, 1)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "4",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "5",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "6",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 80,
                      width: 80,
                      child: Center(
                          child: Text(
                        "-",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w500),
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(180),
                          color: Color.fromRGBO(254, 159, 10, 1))),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "2",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "3",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "+",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(254, 159, 10, 1)),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
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
                        color: Color.fromRGBO(51, 51, 51, 1)),
                    padding: EdgeInsets.only(left: 30),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      ",",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      "=",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromRGBO(254, 159, 10, 1)),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
