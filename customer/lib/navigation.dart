import 'package:customer_side_web/home_page.dart';
import 'package:customer_side_web/menu_page.dart';
import 'package:customer_side_web/promo_page.dart';
import 'package:customer_side_web/store_locations_page.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> get navItems => [
        _buildNavItem(0, "HOME"),
        _buildNavItem(1, "MENU"),
        _buildNavItem(2, "PROMOS"),
        _buildNavItem(3, "STORE LOCATIONS"),
        _buildNavItem(4, "ABOUT US"),
      ];

  Widget _buildNavItem(int index, String label) {
    bool isSelected = _selectedIndex == index;
    return Container(
      decoration: BoxDecoration(
        border: isSelected
            ? const Border(
                bottom: BorderSide(
                  color: Color.fromRGBO(61, 42, 33, 1),
                  width: 2.0,
                ),
              )
            : null,
      ),
      child: TextButton(
        onPressed: () => _onItemTapped(index),
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ), // No rounded corners
            ),
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.hovered)) {
                return Colors.white; // Hover color
              }
              return null;
            },
          ),
          foregroundColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.hovered)) {
                return const Color.fromRGBO(
                    61, 42, 33, 1); // Highlight the text color on hover
              }
              return isSelected
                  ? const Color.fromRGBO(61, 42, 33, 1)
                  : const Color.fromRGBO(61, 42, 33, 1); // Default text color
            },
          ),
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(
                horizontal: 16.0), // Padding around the text
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: isSelected ? 14 : 14,
            fontFamily: "Sagona-Book",
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75.0),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color.fromRGBO(221, 225, 230, 1), // Border color
                width: 3.0, // Border width
              ),
            ),
          ),
          child: AppBar(
            surfaceTintColor: Colors.white,
            backgroundColor: Colors.white,
            elevation: 0, // Remove shadow to show only the border
            flexibleSpace: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 56.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Center content here
                    Image.asset(
                      "assets/images/coffee_beer_logo.png",
                    ),
                    // Action items, centered
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: navItems
                          .map(
                            (widget) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: widget,
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: _selectedIndex == 0
            ? const Homepage()
            : _selectedIndex == 1
                ? const Menupage()
                : _selectedIndex == 2
                    ? const Promopage()
                    : _selectedIndex == 3
                        ? const StoreLocations()
                        : const Text("ABOUT US"),
      ),
    );
  }
}
