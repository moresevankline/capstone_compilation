import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_beer_cafe/services/admin/create_account.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// Create Firestore document for the new user
Future<void> createUserFirestoreDocument(
    String uid, String name, String role) async {
  try {
    await _firestore.collection('users').doc(uid).set({
      'name': name,
      'role': role, // Example: 'admin', 'manager', etc.
      'createdAt': FieldValue.serverTimestamp(),
    });
    print('Firestore document created for user: $name');
  } catch (e) {
    print('Failed to create Firestore document: $e');
  }
}

// Full function to create user and Firestore document
Future<void> createNewUserWithDetails(
    String email, String password, String name, String role) async {
  try {
    String? uid = await createUser(email, password); // Get the UID

    if (uid != null) {
      // Once the account is created, use the UID to create a Firestore document
      await createUserFirestoreDocument(uid, name, role);
    } else {
      print('Failed to create user');
    }
  } catch (e) {
    print('Error while creating user and Firestore document: $e');
  }
}
