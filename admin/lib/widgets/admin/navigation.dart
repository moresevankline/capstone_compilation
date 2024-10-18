import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Navigation extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  const Navigation({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      backgroundColor: Colors.white,
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) {
        switch (index) {
          case 0:
            context.go('/admin');
            break;
          case 1:
            context.go('/account');
            break;
          case 2:
            context.go('/menu');
            break;
          case 3:
            context.go('/promo');
            break;
        }
        onDestinationSelected(index);
      },
      destinations: const [
        NavigationRailDestination(
          icon: Icon(Icons.house_sharp),
          label: Text('Home'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.group),
          label: Text('Accounts'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.storage),
          label: Text('Menu'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.sell),
          label: Text('Promo'),
        ),
      ],
    );
  }
}
