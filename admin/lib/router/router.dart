import 'package:coffee_beer_cafe/screens/admin/account.dart';
import 'package:coffee_beer_cafe/screens/admin/homepage.dart';
import 'package:coffee_beer_cafe/screens/admin/menu.dart';
import 'package:coffee_beer_cafe/screens/admin/promo.dart';
import 'package:coffee_beer_cafe/screens/shared/login.dart';
import 'package:coffee_beer_cafe/widgets/shared/appbar.dart';
import 'package:coffee_beer_cafe/widgets/admin/navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) {
        return const AdminLoginPage();
      },
    ),
    ShellRoute(
      builder: (context, state, child) {
        // Determine the selectedIndex based on the current route
        int selectedIndex;
        switch (state.matchedLocation) {
          case '/admin':
            selectedIndex = 0;
            break;
          case '/account':
            selectedIndex = 1;
            break;
          case '/menu':
            selectedIndex = 2;
            break;
          case '/promo':
            selectedIndex = 3;
            break;
          default:
            selectedIndex = 0; // Default to Home if no match
        }

        final Map<String, String> page = {
          '/admin': 'Home',
          '/account': 'Accounts',
          '/menu': 'Menu',
          '/promo': 'Promo',
        };

        return Scaffold(
          appBar: AppBarWidget(
            title: 'Admin',
            page: page[state.matchedLocation] ?? 'Unknown',
          ),
          body: Row(
            children: [
              Navigation(
                selectedIndex: selectedIndex,
                onDestinationSelected: (index) {
                  selectedIndex = index;
                },
              ),
              const VerticalDivider(width: 1),
              Expanded(child: child),
            ],
          ),
        );
      },
      routes: [
        GoRoute(
          path: '/admin',
          name: 'admin',
          builder: (BuildContext context, GoRouterState state) {
            return const Homepage();
          },
        ),
        GoRoute(
          path: '/account',
          name: 'account',
          builder: (BuildContext context, GoRouterState state) {
            return const Account();
          },
        ),
        GoRoute(
          path: '/menu',
          name: 'menu',
          builder: (BuildContext context, GoRouterState state) {
            return const Menu();
          },
        ),
        GoRoute(
          path: '/promo',
          name: 'promo',
          builder: (BuildContext context, GoRouterState state) {
            return const Promo();
          },
        ),
      ],
    ),
  ],
);
