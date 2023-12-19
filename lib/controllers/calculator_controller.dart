import 'package:calculator/contains/contains.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController{
  var number1 = '0'.obs;
  var number2 = '0'.obs;
  var operation = ''.obs;
  var resultMath = '0'.obs;


  resetAll(){
    number1.value = '0';
    number2.value = '0';
    operation.value = '+';
    resultMath.value = '0';
    saveResultToStorage();
    print("reset done");
  }

  addNumber( String number ) {
    if ( resultMath.value == '0' )
      return resultMath.value = number;

    if ( resultMath.value == '-0' ){
      return resultMath.value = '-' + number;
    }

    if (resultMath.value.length <9){
      resultMath.value = resultMath.value + number;
    }else{
      return;
    }
    print(resultMath);
  }

  negativeChange(){

    if(resultMath.startsWith('-')){
        resultMath.value = resultMath.value.replaceFirst('-', '');
    }else{
      resultMath.value = '-' + resultMath.value;
    }

  }

  percent(){
    double result = double.parse(resultMath.value);

    double resultAfterParse = result / 100;

    resultMath.value = resultAfterParse.toString();

  }

  selectOperation(String Operation) {
    if (number1.value == '0') {
      number1.value = resultMath.value;
    } else {
      operationResult();
    }
    operation.value = Operation;
    resultMath.value = '';
    print(operation);
  }
  operationResult(){
    double num1 = double.parse(number1.value);
    double num2 = double.parse(resultMath.value);
    switch (operation.value){
      case '/':
        resultMath.value = '${num1 / num2}';
        break;
      case 'x':
        resultMath.value = '${num1 * num2}';
        break;
      case '-':
        resultMath.value = '${num1 - num2}';
        break;
      case '+':
        resultMath.value = '${num1 + num2}';
        break;
      default:
        return;
    }
    if(resultMath.endsWith('.0')){
      resultMath.value = resultMath.substring(0,resultMath.value.length-2);
    }
    number1.value = resultMath.value;
    saveResultToStorage();
  }

  dotOperation(){
    if(resultMath.value.contains('.')) return;
    if(resultMath.startsWith('0')){
      resultMath.value = '0.';
    }else{
      resultMath.value = resultMath.value + '.';
    }
  }

  removeLastNumber(){
    if(resultMath.value.replaceAll('-', '').length > 1){
      resultMath.value = resultMath.value.substring(0, resultMath.value.length - 1);
    }else{
      resultMath.value ='0';
    }
    saveResultToStorage();
  }

  void saveResultToStorage() {
    box.write('resultMath', resultMath.value);
  }

}