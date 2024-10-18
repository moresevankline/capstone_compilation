import 'package:firebase_auth/firebase_auth.dart';

Future<String?> createUser(String emailAddress, String password) async {
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );

    // Return the UID if user creation is successful
    return credential.user?.uid;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      return 'The password provided is too weak.';
    } else if (e.code == 'email-already-in-use') {
      return 'The account already exists for that email.';
    } else if (e.code == 'invalid-email') {
      return 'The email address is not valid.';
    } else if (e.code == 'operation-not-allowed') {
      return 'Email/password accounts are not enabled.';
    }
  } catch (e) {
    return 'Error: $e';
  }
  return null;
}
