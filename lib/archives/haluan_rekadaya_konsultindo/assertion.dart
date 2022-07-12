import 'package:flutter/foundation.dart';

int? couldReturnNullButDoesnt() => -3;

void main() {
  int? couldBeNullButIsnt = 1;
  List<int?> listThatCouldHoldNulls = [2, null, 4];

  int a = couldBeNullButIsnt;
  int b = listThatCouldHoldNulls.first!;
  int c = couldReturnNullButDoesnt()!.abs();

  debugPrint('a is $a.');
  debugPrint('b is $b.');
  debugPrint('c is $c.');
}
