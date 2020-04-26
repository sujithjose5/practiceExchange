import 'package:cloud_firestore/cloud_firestore.dart';

final databaseReference = Firestore.instance;

void getData() {
  databaseReference
      .collection("articles")
      .getDocuments()
      .then((QuerySnapshot snapshot) {
    snapshot.documents.forEach((f) => print('${f.data}}'));
  });
}