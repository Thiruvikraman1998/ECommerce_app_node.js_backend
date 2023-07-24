import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: Center(
          child: Row(
        children: [
          ElevatedButton(onPressed: () {}, child: const Text("Continue")),
          SizedBox(width: 20),
          TextButton(onPressed: () {}, child: Text("Click me"))
        ],
      )),
    );
  }
}
