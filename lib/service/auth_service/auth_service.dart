import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:indbytes/model/user_model/user_model.dart';

class AuthService {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  User? _userFromFirebase(auth.User? user) {
    if (user == null) {
      return null;
    }
    return User(user.uid, user.email!, "", "", "");
  }

  Stream<User?>? get user {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  Future<User?> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final Credential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return _userFromFirebase(Credential.user);
  }

  Future<User?> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
    String confirmPassword,

    // Add confirmPassword parameter
  ) async {
    if (password != confirmPassword) {
      throw Exception("Password and Confirm Password do not match");
    }

    final auth.UserCredential credential =
        await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    final user = User(
      credential.user!.uid,
      email,
      name,
      password,
      confirmPassword,
    );

    // Store the user data in Firestore
    await _firestore
        .collection('users')
        .doc(credential.user!.uid)
        .set(user.toJson());

    return _userFromFirebase(credential.user);
  }

  // Future<User?> createrUserWithEmailAndPassword(
  //   String email,
  //   String password,
  // ) async {
  //   final Credential = await _firebaseAuth.createUserWithEmailAndPassword(
  //     email: email,
  //     password: password,
  //   );
  //   return _userFromFirebase(Credential.user);
  // }

  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}
