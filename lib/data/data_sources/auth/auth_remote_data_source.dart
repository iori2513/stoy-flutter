import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb_auth;

import '../../models/auth/auth_user_model.dart';

class AuthRemoteDataSource {
  AuthRemoteDataSource({fb_auth.FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? fb_auth.FirebaseAuth.instance;

  final fb_auth.FirebaseAuth _firebaseAuth;

  Stream<AuthUserModel?> get user {
    return _firebaseAuth.authStateChanges().map((user) {
      if (user == null) {
        return null;
      }
      return AuthUserModel.fromFirebaseAuthUser(user);
    });
  }

  Future<AuthUserModel> signUp({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      fb_auth.UserCredential cred = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      final user = cred.user;
      if (user == null) {
        throw Exception('Error SignUp: no user');
      }
      final authUser = AuthUserModel(
        userId: user.uid,
        username: username,
        email: user.email ?? '',
      );
      await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .set(authUser.toJson());
      return authUser;
    } catch (error) {
      throw Exception('Error SignUp: $error');
    }
  }

  Future<AuthUserModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      fb_auth.UserCredential cred = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      final user = cred.user;
      if (user != null) {
        return AuthUserModel.fromFirebaseAuthUser(user);
      }
      throw Exception('Error SignIn: no user');
    } catch (error) {
      throw Exception('Error SignIn: $error');
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (error) {
      throw Exception('Error SignUp: $error');
    }
  }
}
