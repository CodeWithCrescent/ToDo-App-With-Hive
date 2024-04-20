import 'package:flutter/material.dart';
import 'package:todo_hive/utils/colors.dart';

class DialogButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  DialogButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: GlobalColors.mainColor,
      textColor: GlobalColors.whiteTextColor,
      child: Text(text),
    );
  }
}
