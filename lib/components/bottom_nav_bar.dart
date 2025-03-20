import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromRGBO(0, 0, 0, 0.8),
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/home.png")),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/saturn.png")),
          label: 'Committees',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/calendar.png")),
          label: 'Your Events',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/profile.png")),
          label: 'Profile',
        ),
      ],
    );
  }
}
