import 'package:flutter/material.dart';
import 'package:shopnow/utils/app_colors.dart';

class CustomTextFied extends StatefulWidget {
  final String email;
  final String password;
  final String hintText;
  const CustomTextFied(
      {super.key,
      required this.email,
      required this.password,
      required this.hintText});

  @override
  State<CustomTextFied> createState() => _CustomTextFiedState();
}

class _CustomTextFiedState extends State<CustomTextFied> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.buttonsColor),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.buttonsColor),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
