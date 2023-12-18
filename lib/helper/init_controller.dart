import 'package:calculator/controllers/calculator_controller.dart';
import 'package:get/get.dart';

Future<void> InitController() async {
  Get.lazyPut(() => CalculatorController());
}