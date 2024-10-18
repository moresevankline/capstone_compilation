import 'dart:ui';
import 'package:coffee_beer_cafe/widgets/shared/login_left.dart';
import 'package:coffee_beer_cafe/widgets/shared/login_right.dart';
import 'package:flutter/material.dart';

class AdminLoginPage extends StatefulWidget {
  const AdminLoginPage({super.key});

  @override
  State<AdminLoginPage> createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/admin_login_page_bg.png",
            alignment: Alignment.bottomCenter,
            fit: BoxFit.cover,
            width: width,
            height: height,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: width > 426 ? 48.0 : 72.0,
              horizontal: width > 426 ? 48.0 : 24.0,
            ),
            child: SizedBox.expand(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10,
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.2),
                    ),
                    child: Row(
                      children: [
                        if (width > 1023) const LoginLeft(),
                        LoginRight(width: width)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
