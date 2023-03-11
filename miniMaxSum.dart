import 'dart:io';

void main() {
  List<int> fiveNumbers = List.filled(5, 0);

  print("intput:\n");
  String strArr = stdin.readLineSync()!;
  var strNum = strArr.split(' ');

  for (int i = 0; i < fiveNumbers.length; i++) {
    fiveNumbers[i] = int.parse(strNum[i]);
  }

  var min = minSum(fiveNumbers);
  var max = maxSum(fiveNumbers);
  print('\noutput: \n\n$min $max');
}

int maxSum(List<int> arr) {
  int res = 0;
  for (var i = 0; i < arr.length; i++) {
    res += arr[i];
  }
  return res - getMin(arr);
}

int minSum(List<int> arr) {
  int res = 0;
  for (var i = 0; i < arr.length; i++) {
    res += arr[i];
  }
  return res - getMax(arr);
}

int getMin(var arr) {
  var min = arr[0];
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] < min) {
      min = arr[i];
    }
  }
  return min;
}

int getMax(var arr) {
  var max = arr[0];
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > max) {
      max = arr[i];
    }
  }
  return max;
}

int Sum(List<int> arr) {
  int res = 0;
  for (var i = 0; i < arr.length; i++) {
    res += arr[i];
  }
  return res;
}
