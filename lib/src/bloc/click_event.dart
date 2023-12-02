sealed class ButtonClickEvent {
  const ButtonClickEvent(this.value);

  final String value;
}

class CommomButtonClickEvent extends ButtonClickEvent {
  const CommomButtonClickEvent(super.value);
}

class ClearButtonClickEvent extends ButtonClickEvent {
  const ClearButtonClickEvent(super.value);
}

class ClearEntryButtonClickEvent extends ButtonClickEvent {
  const ClearEntryButtonClickEvent(super.value);
}

class EqualsButtonClickEvent extends ButtonClickEvent {
  const EqualsButtonClickEvent(super.value);
}
