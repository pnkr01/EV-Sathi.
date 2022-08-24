import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../constants/global.dart';

class MapKey {
  readyApiKey() async {
   await FirebaseFirestore.instance
        .collection('api')
        .doc('iVDp529OLO2hrqKghCf8')
        .get()
        .then((snap) {
      String key = snap.data()!["api"];
      sharedPreferences!.setString('key', key);
    });
  }
}



//static const String apiKey="AIzaSyC0XggvP89ZOcb5DiaQirStM6eF5AYLPEM";