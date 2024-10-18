import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_beer_cafe/services/admin/create_account.dart';
import 'package:flutter/material.dart';

class ManagerRegistrationDialog extends StatefulWidget {
  const ManagerRegistrationDialog({super.key});

  @override
  ManagerRegistrationDialogState createState() =>
      ManagerRegistrationDialogState();
}

class ManagerRegistrationDialogState extends State<ManagerRegistrationDialog> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _retypePasswordController = TextEditingController();
  final _emailAddress = TextEditingController();
  final _name = TextEditingController();
  bool _isSubmitted = false;

  @override
  void dispose() {
    _passwordController.dispose();
    _retypePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('Manager'),
      contentPadding: const EdgeInsets.all(16.0),
      children: [
        Form(
          key: _formKey,
          autovalidateMode: _isSubmitted
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    fontFamily: "Roboto",
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontFamily: "Roboto",
                  ),
                ),
                controller: _emailAddress,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontFamily: "Roboto",
                  ),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: _retypePasswordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Retype Password',
                  labelStyle: TextStyle(
                    fontFamily: "Roboto",
                  ),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please retype your password';
                  } else if (value != _passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: const Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        _isSubmitted = true;
                      });

                      if (_formKey.currentState!.validate()) {
                        FocusScope.of(context)
                            .unfocus(); // Dismiss the keyboard

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Processing Data'),
                          ),
                        );

                        // Try to create a new user with the provided email and password
                        String? uid = await createUser(
                            _emailAddress.text, _passwordController.text);

                        // If user creation failed, show an error message and stop further actions
                        if (uid == null) {
                          if (!context.mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  'User creation failed. Please try again.'),
                            ),
                          );
                          return;
                        }

                        // If user creation succeeded, create Firestore document for the user
                        final account = {
                          'name': _name.text,
                          'email': _emailAddress.text,
                          'password': _passwordController.text,
                          'role': 'manager', // Example: 'owner' role
                        };

                        try {
                          // Save user details to Firestore using the uid
                          await FirebaseFirestore.instance
                              .collection('users')
                              .doc(uid)
                              .set(account);

                          // Notify the user of successful registration
                          if (!context.mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Successfully Registered'),
                            ),
                          );

                          // Close the dialog and return to the previous screen
                          if (!context.mounted) return;
                          Navigator.of(context).pop();
                        } catch (e) {
                          // If Firestore document creation fails, show an error message
                          if (!context.mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Error: $e'),
                            ),
                          );
                        }
                      }
                    },
                    child: const Text('Add'),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
