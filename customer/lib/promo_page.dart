import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Promopage extends StatefulWidget {
  const Promopage({super.key});

  @override
  State<Promopage> createState() => _PromopageState();
}

class _PromopageState extends State<Promopage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      height: height,
      width: width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.898,
              child: const Center(
                child: Text(
                  "NO AVAILABLE PROMO YET",
                  style: TextStyle(
                    fontFamily: "Sagona-Book-Bold",
                    fontSize: 40,
                    color: Color.fromRGBO(61, 42, 33, 1),
                  ),
                ),
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
    );
  }
}
