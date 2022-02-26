

import 'package:cloud_firestore/cloud_firestore.dart';

import 'firebase_details.dart';

class FireStoreService {
  // ? SingUp in FireStore

  static signUpFireStore(email, name) async {
    FireBaseServiceDetail.firebaseFirestore.doc("/Users/$email").set({
      "id": email,
      "name": name,
      "createAt": FieldValue.serverTimestamp(),
      "img": "",
    });
  }
}
