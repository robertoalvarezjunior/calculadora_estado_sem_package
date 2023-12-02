import 'dart:async';

import 'package:flutter/foundation.dart';

import 'package:function_tree/function_tree.dart';

import 'package:calculadora/src/bloc/click_event.dart';

class CalcController extends ChangeNotifier {
  String display = '0';
  StreamController<ButtonClickEvent> streamController =
      StreamController<ButtonClickEvent>();

  void onButtonClick(ButtonClickEvent event) {
    if (display == '0') {
      display = '';
    }
    if (event is CommomButtonClickEvent) {
      display += event.value;
    } else if (event is ClearButtonClickEvent) {
      display = display.substring(0, display.length - 1);
    } else if (event is ClearEntryButtonClickEvent) {
      display = '0';
    } else if (event is EqualsButtonClickEvent) {
      final result = display
          .replaceAll(',', '.')
          .replaceAll('x', '*')
          .replaceAll('÷', '/')
          .interpret();

      display = result.toString().replaceAll('.', ',');
    }
    notifyListeners();
  }
}
