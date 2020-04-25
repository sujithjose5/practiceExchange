import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(new MediaQuery(
    data: new MediaQueryData(), child: new MaterialApp(home: new MyApp())));


RaisedButton(
    child: Text('Add Article'),
    onPressed: () {
      createRecord();
    },
),




void createRecord() async {
  DocumentReference ref = await databaseReference.collection("articles")
      .add({
        'tag': 'covid19',
        'tag_domain': 'health',
        'tag_category': 'disaster-preparedness',
        'tag_title': 'covid19-lockdownplanning',
        'article_content': '1. Social distancing and other precautions 2. Identifying cases 3. Testing 4. Tracking 5. Quarantine 6. Helplines 7. Isolation wards  8. Lockdown 9. Media campaigns 10. Volunteer force 11. Migrant labour'
      });
  print(ref.documentID);
}

void getData() {
  databaseReference
      .collection("articles")
      .getDocuments()
      .then((QuerySnapshot snapshot) {
    snapshot.documents.forEach((f) => print('${f.data}}'));
  });
}



void updateData() {
  try {
    databaseReference
        .collection('articles')
        .document('1')
        .updateData({'tag_category': 'disaster-readiness'});
  } catch (e) {
    print(e.toString());
  }
}



void deleteData() {
  try {
    databaseReference
        .collection('articles')
        .document('1')
        .delete();
  } catch (e) {
    print(e.toString());
  }
}
