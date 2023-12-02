// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:calculadora/src/bloc/click_event.dart';

import 'buttom/button_view.dart';

class ButtonHub extends StatelessWidget {
  const ButtonHub({
    Key? key,
    required this.onButtonClick,
  }) : super(key: key);

  final Function(ButtonClickEvent event) onButtonClick;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(15),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: <Widget>[
        ButtonView(
          value: 'CE',
          onTap: (value) => onButtonClick(ClearEntryButtonClickEvent(value)),
          color: Theme.of(context).colorScheme.background,
        ),
        ButtonView(
          value: 'C',
          onTap: (value) => onButtonClick(ClearButtonClickEvent(value)),
          color: Theme.of(context).colorScheme.background,
        ),
        ButtonView(
          value: '%',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
          color: Theme.of(context).colorScheme.background,
        ),
        ButtonView(
          value: '÷',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
          color: Theme.of(context).colorScheme.background,
        ),
        ButtonView(
          value: '7',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
        ),
        ButtonView(
          value: '8',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
        ),
        ButtonView(
          value: '9',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
        ),
        ButtonView(
          value: 'x',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
          color: Theme.of(context).colorScheme.background,
        ),
        ButtonView(
          value: '4',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
        ),
        ButtonView(
          value: '5',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
        ),
        ButtonView(
          value: '6',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
        ),
        ButtonView(
          value: '-',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
          color: Theme.of(context).colorScheme.background,
        ),
        ButtonView(
          value: '1',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
        ),
        ButtonView(
          value: '2',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
        ),
        ButtonView(
          value: '3',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
        ),
        ButtonView(
          value: '+',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
          color: Theme.of(context).colorScheme.background,
        ),
        ButtonView(
          value: '+/-',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
          color: Theme.of(context).colorScheme.background,
        ),
        ButtonView(
          value: '0',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
        ),
        ButtonView(
          value: ',',
          onTap: (value) => onButtonClick(CommomButtonClickEvent(value)),
          color: Theme.of(context).colorScheme.background,
        ),
        ButtonView(
          value: '=',
          onTap: (value) => onButtonClick(EqualsButtonClickEvent(value)),
          color: Theme.of(context).colorScheme.background,
        ),
      ],
    );
  }
}
