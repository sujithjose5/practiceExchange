import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:practiceexchange/models/article.dart';

class DBService {
//  final String uid;
//
//  DBService({this.uid});

  final CollectionReference articleCollection =
      Firestore.instance.collection('articles');

  // stream for article collection
  Stream<List<Article>> get articleDataStream {
    return articleCollection.snapshots().map(_articleListFromSnapshot);
  }

  // support function for articleDataStream
  List<Article> _articleListFromSnapshot(QuerySnapshot querySnapshot) {
    return querySnapshot.documents.map((doc) {
      return Article(
        language: doc['Language'],
        title: doc['Title'],
        articleContent: doc['article_content'],
        category: doc['category'],
        organization: doc['organization'],
        votes: doc['votes'],
      );
    }).toList();
  }

//  // function to update 'users' collection with name and email
//  Future updateUserData(String name, String email) async {
//    await userCollection.document(uid).setData({
//      'name': name,
//      'email': email,
//    });
//  }
}
