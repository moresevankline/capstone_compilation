import 'package:coffee_beer_cafe/theme/theme.dart';
import 'package:coffee_beer_cafe/services/shared/sign_out.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required this.title,
    required this.page,
  });

  final String title;
  final String page;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.black,
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      scrolledUnderElevation: 1,
      toolbarHeight: 75.0,
      actions: [
        Container(
          margin: const EdgeInsetsDirectional.symmetric(horizontal: 16.0),
          child: MenuBar(
            style: const MenuStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(Colors.white),
              shadowColor: WidgetStatePropertyAll<Color>(Colors.white),
              elevation: WidgetStatePropertyAll<double>(0),
            ),
            children: [
              SubmenuButton(
                menuStyle: const MenuStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(255, 255, 255, 0),
                  ),
                  shadowColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(255, 255, 255, 0),
                  ),
                  padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
                    EdgeInsets.all(0),
                  ),
                ),
                style: SubmenuButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AdminColors.primary,
                ),
                menuChildren: [
                  const SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                        color: AdminColors.primary,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(8.0),
                        shape: const RoundedRectangleBorder(),
                      ),
                      onPressed: () async {
                        await signOut();

                        if (!context.mounted) return;

                        context.go('/');
                      },
                      child: const Text("Logout"),
                    ),
                  )
                ],
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
      title: Text("$title Dashboard - $page"),
      elevation: 2,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(75.0);
}
