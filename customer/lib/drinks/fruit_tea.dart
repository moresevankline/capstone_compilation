import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<String> fruitTeaPicksList = [
  "KIWI",
  "GREEN APPLE",
  "STRAWBERRY",
];

final List<Widget> fruitTeaPicks = fruitTeaPicksList
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

class FruitTea extends StatefulWidget {
  const FruitTea({super.key});

  @override
  State<FruitTea> createState() => _FruitTeaState();
}

class _FruitTeaState extends State<FruitTea> {
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
                      "Fruit Tea Picks",
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
                            items: fruitTeaPicks,
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
                      children: fruitTeaPicks.asMap().entries.map(
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
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      width: width,
                      color: const Color.fromRGBO(68, 42, 19, 1),
                      child: const Center(
                        child: Text(
                          "FRUIT TEA",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.0,
                            fontFamily: "Sagona-Book",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      width: width,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Kiwi",
                            style: TextStyle(
                              fontSize: 32,
                              fontFamily: "Sagona-Book",
                              color: Color.fromRGBO(61, 42, 33, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "Green Apple",
                            style: TextStyle(
                              fontSize: 32,
                              fontFamily: "Sagona-Book",
                              color: Color.fromRGBO(61, 42, 33, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            "Strawberry",
                            style: TextStyle(
                              fontSize: 32,
                              fontFamily: "Sagona-Book",
                              color: Color.fromRGBO(61, 42, 33, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
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
