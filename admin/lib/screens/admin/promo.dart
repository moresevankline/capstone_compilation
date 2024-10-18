import 'package:flutter/material.dart';

class Promo extends StatelessWidget {
  const Promo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("January"),
              Wrap(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.green,
                    child: Center(
                      child: Text("NO PROMO"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              const Text("February"),
              Wrap(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.green,
                    child: Center(
                      child: Text("NO PROMO"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              const Text("March"),
              Wrap(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.green,
                    child: Image.asset(
                      "assets/images/promo_sample/March 21-24, 2023.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              const Text("April"),
              Wrap(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.green,
                    child: Center(
                      child: Text("NO PROMO"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              const Text("May"),
              Wrap(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.green,
                    child: Center(
                      child: Text("NO PROMO"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              const Text("June"),
              Wrap(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.green,
                    child: Center(
                      child: Text("NO PROMO"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              const Text("July"),
              Wrap(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.green,
                    child: Image.asset(
                      "assets/images/promo_sample/July 27-28, 2023.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              const Text("August"),
              Wrap(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.green,
                    child: Center(
                      child: Text("NO PROMO"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              const Text("September"),
              Wrap(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.green,
                    child: Image.asset(
                      "assets/images/promo_sample/September 22-24, 2022.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              const Text("October"),
              Wrap(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.green,
                    child: Center(
                      child: Text("NO PROMO"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              const Text("November"),
              Wrap(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.green,
                    child: Center(
                      child: Text("NO PROMO"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              const Text("December"),
              Wrap(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.green,
                    child: Center(
                      child: Text("NO PROMO"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
