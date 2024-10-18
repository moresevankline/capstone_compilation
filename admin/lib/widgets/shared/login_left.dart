import 'package:coffee_beer_cafe/theme/theme.dart';
import 'package:flutter/material.dart';

class LoginLeft extends StatelessWidget {
  const LoginLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: CircleAvatar(
              radius: 100.0,
              child: Image.asset(
                "assets/images/coffee_beer_cafe_logo_png.jpg",
              ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            "COFFEE BEER CAFE",
            style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 42,
              color: AdminColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
