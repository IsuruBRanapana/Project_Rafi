import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_rafi/features/data/models/request/sign_up_request_model.dart';

abstract class FirebaseDataSource {
  Future<QuerySnapshot> getSignUp(SignUpRequestModel request);
}

class FirebaseDataSourceImpl extends FirebaseDataSource {
  final _auth = FirebaseAuth.instance;
  final _fireStore = FirebaseFirestore.instance;

  @override
  Future<QuerySnapshot> getSignUp(SignUpRequestModel request) =>
      _getSignUp(request);

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
      throw e;
    }
  }
}