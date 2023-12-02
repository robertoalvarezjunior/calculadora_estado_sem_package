// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({
    Key? key,
    required this.value,
    this.onTap,
    this.color,
  }) : super(key: key);

  final String value;
  final void Function(String value)? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final color = this.color;
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.deepPurple.shade700,
            offset: const Offset(4, 4),
            blurRadius: 15,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.deepPurple.shade200,
            offset: const Offset(-4, -4),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
        gradient: LinearGradient(
          colors: [Colors.deepPurple.shade200, Colors.deepPurple.shade400],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.1, 0.9],
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: onTap == null ? null : () => onTap!(value),
          child: Center(
            child: Text(
              value,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: color),
            ),
          ),
        ),
      ),
    );
  }
}
