import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: const Color(0xFF191818),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem('assets/images/test9.png', true),
          _buildNavItem('assets/images/test10.png', false),
          _buildNavItem('assets/images/test11.png', false),
          _buildNavItem('assets/images/test12.png', false),
        ],
      ),
    );
  }

  Widget _buildNavItem(String imagePath, bool isActive) {
    return Container(
      width: 32,
      height: 32,
      child: Image.asset(
        imagePath,
        errorBuilder: (context, error, stackTrace) {
          return Icon(
            Icons.error,
            color: isActive ? Colors.white : Colors.grey,
            size: 32, 
          );
        },
      ),
    );
  }
}