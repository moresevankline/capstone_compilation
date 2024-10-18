import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StoreLocationDetails {
  final String province;
  final String location;
  final String locationImage;

  StoreLocationDetails(
    this.province,
    this.location,
    this.locationImage,
  );
}

List<StoreLocationDetails> storeLocationsDetails = [
  StoreLocationDetails(
    "BATANGAS",
    "Ground floor G&G Bldg. P. Burgos St. Opposite of Max Restaurant Barangay 10 Poblacion, Batangas City, Philippines",
    "assets/images/batangas_location.png",
  ),
  StoreLocationDetails(
    "QUEZON",
    "Maharlika Highway, Brgy, Tiaong, 4325 Quezon, Philippines",
    "assets/images/quezon_location.png",
  ),
  StoreLocationDetails(
    "MAKATI",
    "Lower Ground Level, One Ayala, 1 Ayala Ave, Makati, Metro Manila, Philippines",
    "assets/images/metro_manila_location.png",
  ),
];

List<String> storeImages = [
  "assets/images/google_map_batangas_city.png",
  "assets/images/google_map_quezon.png",
  "assets/images/google_map_makati.png",
];

List<Widget> storeLocations = storeLocationsDetails
    .map(
      (item) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.province,
                style: const TextStyle(
                  color: Color.fromRGBO(89, 72, 64, 1),
                  fontFamily: "Sagona-Book-Bold",
                  fontSize: 24.0,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                item.location,
                style: const TextStyle(
                  color: Color.fromRGBO(89, 72, 64, 1),
                  fontFamily: "Sagona-Book",
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Expanded(
            child: Image.asset(
              width: double.infinity,
              fit: BoxFit.cover,
              item.locationImage,
            ),
          ),
        ],
      ),
    )
    .toList();

class StoreLocations extends StatefulWidget {
  const StoreLocations({super.key});

  @override
  State<StoreLocations> createState() => _StoreLocationsState();
}

class _StoreLocationsState extends State<StoreLocations> {
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
                height: height * 0.898,
                color: Colors.white,
                child: SizedBox(
                  width: width * 0.95,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, .25),
                              blurRadius: 10,
                              blurStyle: BlurStyle.outer,
                            ),
                          ],
                        ),
                        height: (height * 0.898) * 0.75,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 32.0,
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              color: const Color.fromRGBO(61, 42, 33, 1),
                              iconSize: 40.0,
                              onPressed: () => _controller.previousPage(),
                              icon: const Icon(Icons.keyboard_arrow_left),
                            ),
                            SizedBox(
                              height: (height * 0.898) * 0.75,
                              width: width * 0.36,
                              child: CarouselSlider(
                                items: storeLocations,
                                carouselController: _controller,
                                options: CarouselOptions(
                                  autoPlayInterval: const Duration(seconds: 2),
                                  autoPlay: true,
                                  enlargeCenterPage: true,
                                  viewportFraction: 0.9,
                                  onPageChanged: (index, reason) {
                                    setState(
                                      () {
                                        _current = index;
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            IconButton(
                              color: const Color.fromRGBO(61, 42, 33, 1),
                              iconSize: 40.0,
                              onPressed: () => _controller.nextPage(),
                              icon: const Icon(Icons.keyboard_arrow_right),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 24.0,
                      ),
                      Expanded(
                        child: Container(
                          color: const Color.fromRGBO(89, 72, 64, 0.5),
                          height: (height * 0.898) * 0.75,
                          child: Image.asset(
                            storeImages[_current],
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
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
