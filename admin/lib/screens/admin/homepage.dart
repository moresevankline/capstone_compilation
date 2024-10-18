import 'package:coffee_beer_cafe/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Align(
            alignment: Alignment.center,
            child: Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: [
                buildManagementCard(
                  context,
                  icon: Icons.group,
                  label: "Manage Accounts",
                  onPressed: () => context.go('/account'),
                ),
                buildManagementCard(
                  context,
                  icon: Icons.local_cafe,
                  label: "Manage Products",
                  onPressed: () => context.go('/menu'),
                ),
                buildManagementCard(
                  context,
                  icon: Icons.sell,
                  label: "Manage Promos",
                  onPressed: () => context.go('/promo'),
                ),
                buildManagementCard(
                  context,
                  icon: Icons.settings,
                  label: "Settings",
                  onPressed: () => context.go('/settings'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildManagementCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(87, 58, 49, 0.5),
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: CircleAvatar(
                radius: 96.0,
                backgroundColor: AdminColors.primary,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 90.0,
                  child: Icon(
                    icon,
                    size: 88.0,
                    color: AdminColors.primary,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: onPressed,
              style: FilledButton.styleFrom(
                backgroundColor: AdminColors.primary,
                padding: const EdgeInsetsDirectional.symmetric(vertical: 24.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                ),
              ),
              child: Text(label),
            ),
          ),
        ],
      ),
    );
  }
}
