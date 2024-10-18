import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("ESPRESSO"),
                const SizedBox(
                  height: 8.0,
                ),
                const Text("Hot"),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/espresso.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Americano",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/espresso.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Cappuccino",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/espresso.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Cafe Latte",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/espresso.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Caramel Macchiato",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/espresso.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Dark Mocha",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/espresso.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Spanish Latte",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      width: 120,
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text("Cold"),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/espresso.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Americano",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/espresso.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Cappuccino",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/espresso.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Cafe Latte",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/espresso.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Caramel Macchiato",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/espresso.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Dark Mocha",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/espresso.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Spanish Latte",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/espresso.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Sea Salt Latte",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      width: 120,
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text("FRAPPE"),
                const SizedBox(
                  height: 8.0,
                ),
                const Text("Coffee base"),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/frappe.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Cheesecake",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/frappe.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Java Chip",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/frappe.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Mocha",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      width: 120,
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text("Non-coffee base"),
                Wrap(
                  runSpacing: 8.0,
                  spacing: 8.0,
                  children: [
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/frappe.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Cheesecake",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/frappe.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Java Chip",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/frappe.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Chocolate",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/frappe.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Matcha",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      width: 120,
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text("FRUIT TEA"),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/fruit_tea.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Kiwi",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/fruit_tea.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Green Apple",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/fruit_tea.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Strawberry",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      width: 120,
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text("SPARKLING SODA"),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/images/menu/sparkling_soda.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Kiwi",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/images/menu/sparkling_soda.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Green Apple",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/images/menu/sparkling_soda.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Strawberry",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      width: 120,
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text("BEER"),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/beer.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "San Mig Light",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/beer.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Pale Pilsen",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/beer.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "San Mig Apple",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Image.asset(
                                    "assets/images/menu/beer.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Red Horse",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      width: 120,
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text("BURGER & SANDWICHES"),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/burger_and_sandwich.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Double Cheese Burger",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/burger_and_sandwich.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Double Patties & Cheese",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/burger_and_sandwich.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Tuna Sandwich",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/burger_and_sandwich.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Chicken Sandwich",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/burger_and_sandwich.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Club House",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      width: 120,
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text("ALL DAY BREAKFAST"),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/all_day_breakfast.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Bacsilog",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/all_day_breakfast.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Hamsilog",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/all_day_breakfast.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Sausilog",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/all_day_breakfast.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Hotsilog",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      width: 120,
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text("RICE MEAL"),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Image.asset(
                                    "assets/images/menu/rice_meal.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Fried Siomai",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Image.asset(
                                    "assets/images/menu/rice_meal.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Chicken Chops",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Image.asset(
                                    "assets/images/menu/rice_meal.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Bagnet w/ Rice",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Image.asset(
                                    "assets/images/menu/rice_meal.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Beef Burger Steak 2's",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Image.asset(
                                    "assets/images/menu/rice_meal.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Pork Steak",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Image.asset(
                                    "assets/images/menu/rice_meal.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Pork Liempo",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      width: 120,
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text("LIGHT BITES"),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Image.asset(
                                    "assets/images/menu/light_bites.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Fries",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Image.asset(
                                    "assets/images/menu/light_bites.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Spicy Wedges",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Image.asset(
                                    "assets/images/menu/light_bites.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Nachos",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      width: 120,
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text("PASTA"),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Image.asset(
                                    "assets/images/menu/pasta.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Spaghetti",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Image.asset(
                                    "assets/images/menu/pasta.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Tuna Pasta",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Image.asset(
                                    "assets/images/menu/pasta.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Carbonara",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      width: 120,
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text("CHICKEN WINGS"),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    "assets/images/menu/chicken_wings.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Plain",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    "assets/images/menu/chicken_wings.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Buffalo",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    "assets/images/menu/chicken_wings.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Salted Egg",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    "assets/images/menu/chicken_wings.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Honey Butter & Garlic",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    "assets/images/menu/chicken_wings.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Sriracha Cheese",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      width: 120,
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text("PIZZA"),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/pizza.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Peperoni",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/pizza.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Aloha",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/pizza.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Beef BBQ",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/pizza.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Four Cheese",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Column(
                        children: [
                          Expanded(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/menu/pizza.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                shape: const RoundedRectangleBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 12.0,
                                ),
                              ),
                              child: const Text(
                                "Supreme",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      width: 120,
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton.filled(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
