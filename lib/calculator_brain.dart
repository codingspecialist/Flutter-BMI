
import 'dart:math';

class CalculatorBrain {

  final int height;
  final int weight;
  double _bmi; // private 변수는 언더스코어를 붙인다.

  CalculatorBrain({this.height, this.weight});

  String calculateBMI(){
    _bmi = weight / pow(height/100, 2); // 제곱할 때 사용하는 함수
    print('bmi : ${_bmi}');
    return _bmi.toStringAsFixed(1);  // 소수점 이하 개수 정하는 함수
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if (_bmi > 18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if (_bmi > 18.5){
      return 'You have a normal body weight. Good job!';
    }else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

}