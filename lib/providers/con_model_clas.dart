import 'package:flutter/widgets.dart';

class CountingTheNumber with ChangeNotifier {
  // int number = 0;
  //   // String message = 'Sanjib Sinha';
  //   //
  //   // void increaseNumber(int number) {
  //   //   number++;
  //   //   notifyListeners();
  //   // }
  //   //
  //   // void testMessage() {
  //   //   message.startsWith('S')
  //   //       ? message = 'Hi Sanjib'
  //   //       : message = 'First letter is not S';
  //   //   notifyListeners();
  //   // }
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}
