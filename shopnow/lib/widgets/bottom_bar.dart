import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../utils/app_colors.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: GNav(
            activeColor: AppColors.textGreen,
            gap: 8,
            backgroundColor: AppColors.greyLight,
            tabBackgroundColor: AppColors.navBarTabBg,
            padding: EdgeInsets.all(8),
            tabMargin: EdgeInsets.symmetric(horizontal: 8),
            textStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            tabs: [
              GButton(
                icon: Icons.home_filled,
                text: "Home",
              ),
              GButton(
                icon: Icons.grid_view_outlined,
                text: "Categories",
              ),
              GButton(
                icon: Icons.grid_view_outlined,
                text: "Categories",
              ),
              GButton(
                icon: Icons.grid_view_outlined,
                text: "Categories",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
