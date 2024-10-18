import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger();

Future<String?> signIn(String email, String password) async {
  try {
    // Sign in with Firebase Authentication
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);

    User? user = userCredential.user;
    final db = FirebaseFirestore.instance;

    final docRef = db.collection("users").doc(user?.uid);
    try {
      DocumentSnapshot doc = await docRef.get();
      if (doc.exists) {
        final data = doc.data() as Map<String, dynamic>;
        return data['role'];
      } else {
        logger.w("Document does not exist.");
      }
    } catch (e) {
      logger.e("Error getting document: $e");
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      logger.w('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      logger.w('Wrong password provided for that user.');
    }
  } catch (e) {
    logger.e('Error during sign in: $e');
  }

  return null; // Return null if sign in failed
}
