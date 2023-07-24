import 'package:flutter/material.dart';
import 'package:shopnow/screens/onboarding_screen.dart';
import 'package:shopnow/utils/app_colors.dart';
import 'package:shopnow/widgets/bottom_bar.dart';

void main() {
  runApp(const ShopNow());
}

class ShopNow extends StatefulWidget {
  const ShopNow({super.key});

  @override
  State<ShopNow> createState() => _ShopNowState();
}

class _ShopNowState extends State<ShopNow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.bgcolorLight,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: AppColors.bgcolorLight,
          titleTextStyle: const TextStyle(color: AppColors.textGreen),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: const ButtonStyle().copyWith(
            backgroundColor:
                const MaterialStatePropertyAll(AppColors.buttonsColor),
            foregroundColor:
                const MaterialStatePropertyAll(AppColors.witeColor),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: const ButtonStyle().copyWith(
            backgroundColor:
                const MaterialStatePropertyAll(AppColors.bgcolorLight),
            foregroundColor:
                const MaterialStatePropertyAll(AppColors.textButtonColor),
          ),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.bgcolorDark,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: AppColors.bgcolorDark,
          titleTextStyle: const TextStyle(color: AppColors.textGreen),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: const ButtonStyle().copyWith(
            backgroundColor:
                const MaterialStatePropertyAll(AppColors.buttonsColor),
            foregroundColor:
                const MaterialStatePropertyAll(AppColors.witeColor),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: const ButtonStyle().copyWith(
            backgroundColor:
                const MaterialStatePropertyAll(AppColors.bgcolorDark),
            foregroundColor:
                const MaterialStatePropertyAll(AppColors.textButtonColor),
          ),
        ),
      ),
      home: const BottomBar(),
    );
  }
}
