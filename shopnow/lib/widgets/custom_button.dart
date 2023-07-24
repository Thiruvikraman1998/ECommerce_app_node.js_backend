import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPress;
  const CustomButton({super.key, required this.label, required this.onPress});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 18),
          minimumSize: Size(size.width, size.height * 0.06)),
      child: Text(label),
    );
  }
}
