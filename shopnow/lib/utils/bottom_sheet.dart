import 'package:flutter/material.dart';
import 'package:shopnow/utils/app_colors.dart';
import 'package:shopnow/widgets/custom_button.dart';
import 'package:shopnow/widgets/custom_textfield.dart';

class LoginModal extends StatefulWidget {
  const LoginModal({super.key});

  @override
  State<LoginModal> createState() => _LoginModalState();
}

class _LoginModalState extends State<LoginModal> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        margin: const EdgeInsets.all(20),
        height: size.height * 0.38,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Login",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const CustomTextFied(
              email: "email",
              password: "password",
              hintText: "Enter email...",
            ),
            const SizedBox(height: 20),
            const CustomTextFied(
              email: "email",
              password: 'password',
              hintText: "Enter password...",
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: AppColors.textButtonColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(
                        color: AppColors.textButtonColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  label: "Cancel",
                  onPress: () => Navigator.pop(context),
                  size: Size(size.width / 2.3, size.height * 0.06),
                ),
                CustomButton(
                    label: "Login",
                    onPress: () {},
                    size: Size(size.width / 2.3, size.height * 0.06)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
