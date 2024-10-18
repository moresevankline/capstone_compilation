import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<String> bestSellers = [
  "CARAMEL MACCHIATO",
  "CAPPUCINO",
  "AMERICANO",
];

final List<Widget> bestSellerItems = bestSellers
    .map(
      (item) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            item,
            style: const TextStyle(
              color: Color.fromRGBO(61, 42, 33, 1),
              letterSpacing: 8,
              fontFamily: "Sagona-Book-Bold",
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    )
    .toList();

class Menupage extends StatefulWidget {
  const Menupage({super.key});

  @override
  State<Menupage> createState() => _MenupageState();
}

class _MenupageState extends State<Menupage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  late ScrollController _scrollController;
  bool _showFab = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      if (!_showFab) {
        setState(() {
          _showFab = true;
        });
      }
    } else {
      if (_showFab) {
        setState(() {
          _showFab = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: _showFab
          ? FloatingActionButton(
              backgroundColor: const Color.fromRGBO(97, 79, 70, 1),
              onPressed: () {
                _scrollController.animateTo(
                  0.0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                );
              },
              child: const Icon(
                color: Colors.white,
                Icons.arrow_upward,
              ),
            )
          : null,
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: height * 0.65,
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Our Best Sellers",
                      style: TextStyle(
                        color: Color.fromRGBO(61, 42, 33, 1),
                        fontFamily: "Sagona-Book-Bold",
                        fontSize: 32.0,
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      children: [
                        IconButton(
                          color: const Color.fromRGBO(61, 42, 33, 1),
                          iconSize: 40.0,
                          onPressed: () => _controller.previousPage(),
                          icon: const Icon(Icons.keyboard_arrow_left),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Expanded(
                          child: CarouselSlider(
                            carouselController: _controller,
                            options: CarouselOptions(
                              height: height * 0.2,
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              },
                            ),
                            items: bestSellerItems,
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        IconButton(
                          color: const Color.fromRGBO(61, 42, 33, 1),
                          iconSize: 40.0,
                          onPressed: () => _controller.nextPage(),
                          icon: const Icon(Icons.keyboard_arrow_right),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: bestSellerItems.asMap().entries.map(
                        (entry) {
                          return GestureDetector(
                            onTap: () {
                              _controller.animateToPage(entry.key);
                              setState(() {
                                _current = entry.key;
                              });
                            },
                            child: Container(
                              width: 10.0,
                              height: 8.0,
                              margin: const EdgeInsets.symmetric(
                                vertical: 0,
                                horizontal: 4.0,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                  _current == entry.key ? 0.9 : 0.4,
                                ),
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 4.0,
                thickness: 4.0,
                color: Color.fromRGBO(217, 217, 217, 1),
              ),
              Container(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "MENU",
                      style: TextStyle(
                        fontSize: 32.0,
                        fontFamily: "Sagona-Book",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Drinks",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: "Sagona-Book",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: drinks,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Meals",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: "Sagona-Book",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          children: meals,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 0.25,
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                color: const Color.fromRGBO(93, 66, 43, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: (height * 0.25) * 0.7,
                    ),
                    const SizedBox(
                      width: 24.0,
                    ),
                    SizedBox(
                      width: width * 0.75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(
                                  "HOME",
                                  style: TextStyle(
                                    fontFamily: "Sagona-Book",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(
                                  "MENU",
                                  style: TextStyle(
                                    fontFamily: "Sagona-Book",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(
                                  "PROMOS",
                                  style: TextStyle(
                                    fontFamily: "Sagona-Book",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(
                                  "STORE LOCATIONS",
                                  style: TextStyle(
                                    fontFamily: "Sagona-Book",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(
                                  "ABOUT US",
                                  style: TextStyle(
                                    fontFamily: "Sagona-Book",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const FaIcon(
                                      size: 20.0,
                                      color: Color.fromRGBO(93, 66, 43, 1),
                                      FontAwesomeIcons.facebookF,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const FaIcon(
                                      size: 20.0,
                                      color: Color.fromRGBO(93, 66, 43, 1),
                                      FontAwesomeIcons.instagram,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const FaIcon(
                                      size: 20.0,
                                      color: Color.fromRGBO(93, 66, 43, 1),
                                      FontAwesomeIcons.tiktok,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          const Divider(
                            height: 1.0,
                            thickness: 1.0,
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          const Text(
                            "Cofee Beer Cafe  ©  2024. All rights reserved.",
                            style: TextStyle(
                              fontFamily: "Sagona-Book",
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Meals {
  final String mealImage;
  final String mealCategory;

  Meals(
    this.mealImage,
    this.mealCategory,
  );
}

final List<Meals> mealsCategory = [
  Meals("assets/images/all_day_breakfast.png", "ALL DAY BREAKFAST"),
  Meals("assets/images/burger_and_sandwich.png", "BURGER & SANDWICHES"),
  Meals("assets/images/rice_meal.png", "RICE MEAL"),
  Meals("assets/images/light_bites.png", "LIGHT BITES"),
  Meals("assets/images/pasta.png", "PASTA"),
  Meals("assets/images/chicken_wings.png", "CHICKEN WINGS"),
  Meals("assets/images/pizza.png", "PIZZA"),
];

List<Widget> meals = mealsCategory
    .map(
      (item) => Meal(
        mealImage: item.mealImage,
        mealCategory: item.mealCategory,
      ),
    )
    .toList();

class Meal extends StatelessWidget {
  const Meal({
    super.key,
    required this.mealImage,
    required this.mealCategory,
  });

  final String mealImage;
  final String mealCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, .25),
              blurRadius: 5,
              blurStyle: BlurStyle.outer,
            ),
          ],
          borderRadius: BorderRadius.circular(16.0),
        ),
        width: 200,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                backgroundColor: const Color.fromRGBO(50, 31, 15, 1),
                maxRadius: 75,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 70,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 45,
                    child: Image.asset(
                      mealImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0),
                    ),
                  ),
                  padding: const EdgeInsets.all(24.0),
                  backgroundColor: const Color.fromRGBO(68, 42, 19, 1),
                ),
                onPressed: () {},
                child: Text(
                  mealCategory,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontFamily: "Sagona-Book",
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Drinks {
  final String drinkImage;
  final String drinkCategory;

  Drinks(
    this.drinkImage,
    this.drinkCategory,
  );
}

final List<Drinks> drinksCategory = [
  Drinks("assets/images/espresso.png", "ESPRESSO"),
  Drinks("assets/images/frappe.png", "FRAPPE"),
  Drinks("assets/images/fruit_tea.png", "FRUIT TEA"),
  Drinks("assets/images/sparkling_soda.png", "SPARKLING SODA"),
  Drinks("assets/images/beer.png", "BEER"),
];

List<Widget> drinks = drinksCategory
    .map(
      (item) => Drink(
        drinkImage: item.drinkImage,
        drinkCategory: item.drinkCategory,
      ),
    )
    .toList();

class Drink extends StatelessWidget {
  const Drink({
    super.key,
    required this.drinkImage,
    required this.drinkCategory,
  });

  final String drinkImage;
  final String drinkCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, .25),
              blurRadius: 5,
              blurStyle: BlurStyle.outer,
            ),
          ],
          borderRadius: BorderRadius.circular(16.0),
        ),
        width: 200,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                backgroundColor: const Color.fromRGBO(50, 31, 15, 1),
                maxRadius: 75,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 70,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 45,
                    child: Image.asset(
                      drinkImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0),
                    ),
                  ),
                  padding: const EdgeInsets.all(24.0),
                  backgroundColor: const Color.fromRGBO(68, 42, 19, 1),
                ),
                onPressed: () {},
                child: Text(
                  drinkCategory,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontFamily: "Sagona-Book",
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
