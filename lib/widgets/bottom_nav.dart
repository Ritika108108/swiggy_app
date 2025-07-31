// lib/widgets/bottom_nav.dart
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      currentIndex: 1, // 'Food' active
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.fastfood), label: 'Food'),
        BottomNavigationBarItem(icon: Icon(Icons.flash_on_outlined), label: 'Bolt'),
        BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'High Protein'),
        BottomNavigationBarItem(icon: Icon(Icons.replay), label: 'Reorder'),
      ],
    );
  }
}
