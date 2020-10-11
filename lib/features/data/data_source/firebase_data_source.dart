import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_rafi/features/data/models/request/login_request_model.dart';
import 'package:project_rafi/features/data/models/request/sign_up_request_model.dart';
import 'package:project_rafi/features/data/models/request/theropist_request_model.dart';

abstract class FirebaseDataSource {
  Future<QuerySnapshot> getSignUp(SignUpRequestModel request);
  Future<QuerySnapshot> getLogin(LoginRequestModel request);
  Future<QuerySnapshot> getThero(TheropistRequestModel request);

}

class FirebaseDataSourceImpl extends FirebaseDataSource {
  final _auth = FirebaseAuth.instance;
  final _fireStore = FirebaseFirestore.instance;

  @override
  Future<QuerySnapshot> getSignUp(SignUpRequestModel request) =>
      _getSignUp(request);

  @override
  Future<QuerySnapshot> getLogin(LoginRequestModel request) => _getLogin(request);

  @override
  Future<QuerySnapshot> getThero(TheropistRequestModel request) =>_getThero(request);

  //------------------- implementation------------------------//
  Future<QuerySnapshot> _getSignUp(SignUpRequestModel request) async {
    try {
      final user = await _auth.createUserWithEmailAndPassword(
          email: request.email, password: request.password);

      _fireStore.collection('Users').doc(user.user.uid).set({
        'userName': request.userName,
        'uid': user.user.uid,
        'age': request.age,
        'weight': request.weight,
        'height': request.height,
        'position': request.position,
        'injuryPeriod': request.injuryPeriod,
        'email': request.email,
      });
      return _fireStore
          .collection('Users')
          .where('uid', isEqualTo: user.user.uid)
          .get();
    } on Exception catch (e) {
      print(e);
      throw e;
    }
  }

  Future<QuerySnapshot> _getLogin(LoginRequestModel request) async{
    try {
      UserCredential user = await _auth.signInWithEmailAndPassword(
          email: request.email.trim(), password: request.password);
      return _fireStore
          .collection('Users')
          .where('uid', isEqualTo: user.user.uid)
          .get();
    } on Exception catch (e) {
      print(e);
      throw e;
    }
  }

  Future<QuerySnapshot> _getThero(TheropistRequestModel request) async{
    try {
      return _fireStore
          .collection('Therapist')
          .get();
    } on Exception catch (e) {
      print(e);
      throw e;
    }
  }



}
