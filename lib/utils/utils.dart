
import 'dart:math';

class Utils {
  static int generateIntRandomNumber(int max){
    Random num = Random();
    return num.nextInt(max);
  }
}