import 'package:cloud_firestore/cloud_firestore.dart';

class UserManagement{
  Future<void> updateData(newData, String uid) async{
    final _fireStore = FirebaseFirestore.instance;
    try{
      _fireStore.collection('Users').doc(uid).update(newData).catchError((e){print(e);});
    }catch (e){
      print(e);
    }
  }
}