import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNabBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNabBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 24,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (index) => onTabChange!(index),
        tabs: [
          GButton(icon: Icons.home, text: 'Shop', gap: 4),
          GButton(icon: Icons.shop, text: 'Cart', gap: 4),
        ],
      ),
    );
  }
}
