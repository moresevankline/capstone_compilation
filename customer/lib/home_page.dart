import 'package:customer_side_web/videoplayer/video.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
        color: Colors.white,
        height: height,
        width: width,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Container(
                height: height * 0.898,
                padding: const EdgeInsets.symmetric(horizontal: 56.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 48.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: width * 0.35,
                            child: const Text(
                              "Start your day with coffee. End your day with beer",
                              style: TextStyle(
                                fontSize: 40,
                                fontFamily: "Sagona-Book-Bold",
                                color: Color.fromRGBO(61, 42, 33, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              side: WidgetStateProperty.resolveWith<BorderSide>(
                                (Set<WidgetState> states) {
                                  return const BorderSide(
                                    color: Color.fromRGBO(89, 72, 64, 1),
                                  );
                                },
                              ),
                              foregroundColor:
                                  WidgetStateProperty.resolveWith<Color?>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.hovered)) {
                                    if (states.contains(WidgetState.pressed)) {
                                      return Colors.white;
                                    }
                                    return const Color.fromRGBO(89, 72, 64, 1);
                                  }
                                  return Colors.white;
                                },
                              ),
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color?>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.hovered)) {
                                    return Colors.white;
                                  }
                                  return const Color.fromRGBO(89, 72, 64, 1);
                                },
                              ),
                              overlayColor:
                                  WidgetStateProperty.resolveWith<Color?>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.hovered)) {
                                    if (states.contains(WidgetState.pressed)) {
                                      return const Color.fromRGBO(
                                          89, 72, 64, 0.95);
                                    }
                                    return Colors.white;
                                  }
                                  return const Color.fromRGBO(89, 72, 64, 0.95);
                                },
                              ),
                              padding: WidgetStateProperty.resolveWith<
                                  EdgeInsetsGeometry>(
                                (Set<WidgetState> states) {
                                  return const EdgeInsets.all(20.0);
                                },
                              ),
                              shape: WidgetStateProperty.resolveWith<
                                  OutlinedBorder>(
                                (Set<WidgetState> states) {
                                  return RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  );
                                },
                              ),
                            ),
                            child: const Text(
                              "DISCOVER MENU",
                              style: TextStyle(
                                fontFamily: "Sagona-Book-Bold",
                                letterSpacing: 0.5,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.4,
                      height: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Image.asset("assets/images/coffee-beer-cup.png"),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.black,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: width,
                    ),
                    SizedBox(
                      width: width * 0.7,
                      child: const AspectRatio(
                        aspectRatio: 16 / 9,
                        child: CoffeeBeerCafeVideo(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 0.75,
                padding:
                    const EdgeInsetsDirectional.symmetric(horizontal: 104.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: (height * 0.75) * 0.75,
                        child: Image.asset(
                          "assets/images/frappe_img.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 24.0,
                    ),
                    SizedBox(
                      height: (height * 0.75) * 0.75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: width * 0.4,
                            child: const Text(
                              "Take a sip and let the frappe do the talking",
                              style: TextStyle(
                                fontSize: 40,
                                fontFamily: "Sagona-Book-Bold",
                                color: Color.fromRGBO(61, 42, 33, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              side: WidgetStateProperty.resolveWith<BorderSide>(
                                (Set<WidgetState> states) {
                                  return const BorderSide(
                                    color: Color.fromRGBO(89, 72, 64, 1),
                                  );
                                },
                              ),
                              foregroundColor:
                                  WidgetStateProperty.resolveWith<Color?>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.hovered)) {
                                    if (states.contains(WidgetState.pressed)) {
                                      return const Color.fromRGBO(
                                          89, 72, 64, 1);
                                    }
                                    return Colors.white;
                                  }
                                  return const Color.fromRGBO(89, 72, 64, 1);
                                },
                              ),
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color?>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.hovered)) {
                                    return const Color.fromRGBO(89, 72, 64, 1);
                                  }
                                  return Colors.white;
                                },
                              ),
                              overlayColor:
                                  WidgetStateProperty.resolveWith<Color?>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.hovered)) {
                                    if (states.contains(WidgetState.pressed)) {
                                      return const Color.fromRGBO(
                                          255, 255, 255, 0.95);
                                    }
                                    return const Color.fromRGBO(89, 72, 64, 1);
                                  }

                                  return const Color.fromRGBO(
                                      255, 255, 255, 0.95);
                                },
                              ),
                              padding: WidgetStateProperty.resolveWith<
                                  EdgeInsetsGeometry>(
                                (Set<WidgetState> states) {
                                  return const EdgeInsets.all(20.0);
                                },
                              ),
                              shape: WidgetStateProperty.resolveWith<
                                  OutlinedBorder>(
                                (Set<WidgetState> states) {
                                  return RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  );
                                },
                              ),
                            ),
                            child: const Text(
                              "SIP AND GO",
                              style: TextStyle(
                                fontFamily: "Sagona-Book-Bold",
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ],
                      ),
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
                height: height * 0.8,
                padding:
                    const EdgeInsetsDirectional.symmetric(horizontal: 104.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: (height * 0.8) * 0.8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset(
                              "assets/images/pizza_img.png",
                              width: width * 0.38,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.38,
                            child: const Text(
                              "Savoring every moment and every bite",
                              style: TextStyle(
                                fontSize: 40,
                                fontFamily: "Sagona-Book-Bold",
                                color: Color.fromRGBO(61, 42, 33, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              side: WidgetStateProperty.resolveWith<BorderSide>(
                                (Set<WidgetState> states) {
                                  return const BorderSide(
                                    color: Color.fromRGBO(89, 72, 64, 1),
                                  );
                                },
                              ),
                              foregroundColor:
                                  WidgetStateProperty.resolveWith<Color?>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.hovered)) {
                                    if (states.contains(WidgetState.pressed)) {
                                      return const Color.fromRGBO(
                                          89, 72, 64, 1);
                                    }
                                    return Colors.white;
                                  }
                                  return const Color.fromRGBO(89, 72, 64, 1);
                                },
                              ),
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color?>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.hovered)) {
                                    return const Color.fromRGBO(89, 72, 64, 1);
                                  }
                                  return Colors.white;
                                },
                              ),
                              overlayColor:
                                  WidgetStateProperty.resolveWith<Color?>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.hovered)) {
                                    if (states.contains(WidgetState.pressed)) {
                                      return const Color.fromRGBO(
                                          255, 255, 255, 0.95);
                                    }
                                    return const Color.fromRGBO(89, 72, 64, 1);
                                  }

                                  return const Color.fromRGBO(
                                      255, 255, 255, 0.95);
                                },
                              ),
                              padding: WidgetStateProperty.resolveWith<
                                  EdgeInsetsGeometry>(
                                (Set<WidgetState> states) {
                                  return const EdgeInsets.all(20.0);
                                },
                              ),
                              shape: WidgetStateProperty.resolveWith<
                                  OutlinedBorder>(
                                (Set<WidgetState> states) {
                                  return RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  );
                                },
                              ),
                            ),
                            child: const Text(
                              "EXPLORE",
                              style: TextStyle(
                                fontFamily: "Sagona-Book-Bold",
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 24.0,
                    ),
                    SizedBox(
                      height: (height * 0.8) * 0.8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset(
                              "assets/images/chicken_img.png",
                              width: width * 0.39,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.39,
                            child: const Text(
                              "Winging my way to happiness, one bite at a time",
                              style: TextStyle(
                                fontSize: 40,
                                fontFamily: "Sagona-Book-Bold",
                                color: Color.fromRGBO(61, 42, 33, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              side: WidgetStateProperty.resolveWith<BorderSide>(
                                (Set<WidgetState> states) {
                                  return const BorderSide(
                                    color: Color.fromRGBO(89, 72, 64, 1),
                                  );
                                },
                              ),
                              foregroundColor:
                                  WidgetStateProperty.resolveWith<Color?>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.hovered)) {
                                    if (states.contains(WidgetState.pressed)) {
                                      return const Color.fromRGBO(
                                          89, 72, 64, 1);
                                    }
                                    return Colors.white;
                                  }
                                  return const Color.fromRGBO(89, 72, 64, 1);
                                },
                              ),
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color?>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.hovered)) {
                                    return const Color.fromRGBO(89, 72, 64, 1);
                                  }
                                  return Colors.white;
                                },
                              ),
                              overlayColor:
                                  WidgetStateProperty.resolveWith<Color?>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.hovered)) {
                                    if (states.contains(WidgetState.pressed)) {
                                      return const Color.fromRGBO(
                                          255, 255, 255, 0.95);
                                    }
                                    return const Color.fromRGBO(89, 72, 64, 1);
                                  }

                                  return const Color.fromRGBO(
                                      255, 255, 255, 0.95);
                                },
                              ),
                              padding: WidgetStateProperty.resolveWith<
                                  EdgeInsetsGeometry>(
                                (Set<WidgetState> states) {
                                  return const EdgeInsets.all(20.0);
                                },
                              ),
                              shape: WidgetStateProperty.resolveWith<
                                  OutlinedBorder>(
                                (Set<WidgetState> states) {
                                  return RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  );
                                },
                              ),
                            ),
                            child: const Text(
                              "EXPLORE",
                              style: TextStyle(
                                fontFamily: "Sagona-Book-Bold",
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ],
                      ),
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
