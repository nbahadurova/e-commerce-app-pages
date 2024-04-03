import 'package:flutter/material.dart';

class SizeDescriptionText extends StatelessWidget {
  const SizeDescriptionText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 17,
      ),
    );
  }
}
