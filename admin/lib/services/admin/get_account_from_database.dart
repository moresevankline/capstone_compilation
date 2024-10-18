import 'package:cloud_firestore/cloud_firestore.dart';

Future<Map<String, dynamic>> usersData() async {
  final db = FirebaseFirestore.instance;
  final user =
      await db.collection("users").where("role", isEqualTo: "owner").get().then(
    (querySnapshot) {
      Map<String, dynamic> user = {};
      for (var docSnapshot in querySnapshot.docs) {
        user.addAll(
          {
            docSnapshot.id: docSnapshot.data(),
          },
        );
      }
      return user;
    },
    onError: (e) => print("Error completing: $e"),
  );
  return user;
}
