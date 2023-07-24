import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPress;
  final Size size;
  final Color? bgcolor;
  const CustomButton(
      {super.key,
      required this.label,
      required this.onPress,
      required this.size,
      this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
          backgroundColor: bgcolor,
          textStyle: const TextStyle(fontSize: 18),
          minimumSize: size),
      child: Text(label),
    );
  }
}
