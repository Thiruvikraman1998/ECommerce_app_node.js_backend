import 'package:flutter/material.dart';
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
      theme: ThemeData(useMaterial3: true),
      home: BottomBar(),
    );
  }
}
