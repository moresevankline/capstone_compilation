import 'package:coffee_beer_cafe/services/admin/fetch_manager_data.dart';
import 'package:coffee_beer_cafe/widgets/admin/manager.dart';
import 'package:coffee_beer_cafe/widgets/admin/owner.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  Map<String, Map<String, dynamic>>? items;

  Future<void> fetchItems() async {
    try {
      Map<String, Map<String, dynamic>> data =
          await ApiService.fetchItemsFromApi();
      setState(() {
        items = data;
      });
    } catch (e) {
      print('Error fetching items: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchItems(); // Fetch the items when the widget is initialized
  }

  @override
  Widget build(BuildContext context) {
    if (items != null) {

    }

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return SimpleDialog(
                title: const Text('Add New Account'),
                children: <Widget>[
                  SimpleDialogOption(
                    onPressed: () {
                      Navigator.of(context).pop();
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const OwnerRegistrationDialog();
                        },
                      );
                    },
                    child: const Text('Owner'),
                  ),
                  SimpleDialogOption(
                    onPressed: () {
                      Navigator.of(context).pop();
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const ManagerRegistrationDialog();
                        },
                      );
                    },
                    child: const Text('Manager'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text("Manager"),
              ),
              const SizedBox(height: 16.0),
              Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: [
                  _buildAccountCard("Evan Kline Mores", Icons.person),
                  _buildAccountCard("Evan Kline Mores", Icons.person),
                  _buildAccountCard("Evan Kline Mores", Icons.person),
                  _buildAccountCard("Evan Kline Mores", Icons.person),
                  _buildAccountCard("Evan Kline Mores", Icons.person),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text("Owner"),
              const SizedBox(height: 16.0),
              Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: [
                  _buildAccountCard("Evan Kline Mores", Icons.person),
                  _buildAccountCard("Evan Kline Mores", Icons.person),
                  _buildAccountCard("Evan Kline Mores", Icons.person),
                  _buildAccountCard("Evan Kline Mores", Icons.person),
                  _buildAccountCard("Evan Kline Mores", Icons.person),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build account cards
  Widget _buildAccountCard(String name, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsetsDirectional.symmetric(
        vertical: 16.0,
        horizontal: 16.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            color: const Color.fromRGBO(87, 58, 49, 1),
            iconSize: 56.0,
            onPressed: () {
              print(items);
            },
            icon: Icon(iconData),
            style: IconButton.styleFrom(
              padding: const EdgeInsets.all(24.0),
              shape: const CircleBorder(
                side: BorderSide(width: 2.0),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          SizedBox(
            width: 100,
            child: Text(
              name,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
